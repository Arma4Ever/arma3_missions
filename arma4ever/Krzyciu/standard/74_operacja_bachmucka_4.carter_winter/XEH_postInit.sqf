#include "script_component.hpp"
/*
 * XEH_postInit.sqf
 * Poniższy kod wykona się po starcie misji, gdy wykonają się już pozostałe inity.
 * Dokumentacja: https://community.bistudio.com/wiki/Arma_3:_Functions_Library#Pre_and_Post_Init
 */

setHumidity 1;
setViewDistance 650;
setObjectViewDistance 650;

if (hasInterface) then {

  #include "briefing.hpp"
  #include "\a3\ui_f\hpp\defineDIKCodes.inc"

  // Intro
  ["CBA_loadingScreenDone", {
    if (didJIP) exitWith {};
    0 spawn FUNC(intro);
    {player removeMagazine _x} forEach magazines player;
  }] call CBA_fnc_addEventHandler;

  call (compileScript ["scripts\addZeusModules.sqf"]);
  call (compileScript ["scripts\addInteractions.sqf"]);

  player setUnitTrait ["camouflageCoef", 0.6];
  player setUnitTrait ["audibleCoef", 0.5];
  player setUnitTrait ["loadCoef", 0.5];
  player disableConversation true;
  [player, "NoVoice"] remoteExec ["setSpeaker", 0];

  0 spawn {
   private _handle = [{
     ace_mk6mortar_useAmmoHandling = false;
   }, 0.5, []] call CBA_fnc_addPerFrameHandler;
   sleep 20;
   [_handle] call CBA_fnc_removePerFrameHandler;
  };

  enableSaving [false, false];
  enableSentences false;
  "LightShafts" ppEffectAdjust [0.2, 1, 0.8, 0.2];

  private _terrainLocation = nearestLocation [[4098,4182,0], ""];
  createLocation [_terrainLocation]; 
  _terrainLocation setType "NameCityCapital";
  _terrainLocation setText "Krasne";

  _terrainLocation = nearestLocation [[3395,4079,0], ""];
  createLocation [_terrainLocation]; 
  _terrainLocation setType "NameCity";
  _terrainLocation setText "Lotnisko";

  _terrainLocation = nearestLocation [[3086.49,6014.55,0], ""];
  createLocation [_terrainLocation]; 
  _terrainLocation setType "NameCity";
  _terrainLocation setText "Czasiw Jar";

  _terrainLocation = nearestLocation [[4896.91,6249.54,0], ""];
  createLocation [_terrainLocation]; 
  _terrainLocation setText "";

  _terrainLocation = createLocation ["NameCity", [4750,3965,0], 50, 50]; 
  _terrainLocation setText "Dworzec Kolejowy";

  GVAR(PostFX) = ppEffectCreate ["colorCorrections", 3749]; 
  GVAR(PostFX) ppEffectEnable true;
  GVAR(PostFX) ppEffectAdjust [1, 1, 0, [1, 1, 1, 0], [1, 1, 1, 0.5], [0.1, 0.4, 0.45, 1]];  
  GVAR(PostFX) ppEffectCommit 0;

  ["[Operacja Bachmucka]", QGVAR(openComputer), LLSTRING(Action_OpenComputer), {
    // Condition: canInteract
    if (player getVariable ["isArtGunner", false]) then {
      createDialog QGVAR(GUI_TargetMenu);
    };
  }, {}, [DIK_P, [false, false, false]]] call CBA_fnc_addKeybind;

  private _condition = {player getVariable [QGVAR(isCommander), false] && (missionNamespace getVariable [QGVAR(art), 0] isEqualTo 1)};
  private _arty = ["arty","Wezwij ostrzał artyleryjski","",{0 spawn Krzyc_fnc_arty;},_condition] call ace_interact_menu_fnc_createAction;
  [player, 1, ["ACE_SelfActions"],_arty] call ace_interact_menu_fnc_addActionToObject;

  [QGVAR(create), {
    params ["_posASL", "_indirectHitRAnge"];

    private _boom = createSimpleObject ["Land_DirtPatch_03_F", _posASL, true];
    _boom setPosASL _posASL;
    _boom setDir random 360;
    _boom setObjectScale (_indirectHitRAnge / 15);
    private _objectArray = [];
    private _grassCutter = "Land_ClutterCutter_large_F" createVehicleLocal _posASL;
    _objectArray pushBack _grassCutter;
    _grassCutter setPosASL _posASL;
    _grassCutter enableSimulation false;

    [{{deleteVehicle _x;} forEach _this;}, _objectArray, 600] call CBA_fnc_waitAndExecute
    
  }] call CBA_fnc_addEventHandler;

};

if (isServer) then {
missionNamespace setVariable [QGVAR(art), 1, true];
0 setOvercast 1;
0 setRain 1;
forceWeatherChange;  
  [  
    "a3\data_f\snowflake4_ca.paa", // rainDropTexture  
    1, // texDropCount  
    0.01, // minRainDensity  
    22, // effectRadius  
    0.05, // windCoef  
    5.5, // dropSpeed  
    1.02, // rndSpeed  
    0.3, // rndDir  
    0.05, // dropWidth  
    0.05, // dropHeight  
    [1, 1, 1, 0.4], // dropColor  
    0.9, // lumSunFront  
    0.9, // lumSunBack  
    0.5, // refractCoef  
    0.5, // refractSaturation  
    true, // snow  
    true // dropColorStrong  
  ] call BIS_fnc_setRain;

  0 execVM "scripts\drawPolylines.sqf";

  GVAR(indirectHitRangeCache) = createHashMap;
  // craters_queueHash = createHashMap;
  getTerrainInfo params ["", "", "_cellSize"];
  GVAR(cellSize) = _cellSize;
  addMissionEventHandler ["ProjectileCreated", {
      params ["_projectile"];
      _projectile addEventHandler ["Explode", {_this call FUNC(deform);}];
  }];
  ["ace_explosives_place", {
      params ["_explosive"];
      _explosive addEventHandler ["Explode", {_this call FUNC(deform);}];
  }] call CBA_fnc_addEventHandler;
};

"IsMoving" setDynamicSimulationDistanceCoef 1;
"Group" setDynamicSimulationDistance 685;
lambs_danger_disableAIHideFromTanksAndAircraft = true;   