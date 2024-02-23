#include "script_component.hpp"
/*
 * XEH_postInit.sqf
 * Poniższy kod wykona się po starcie misji, gdy wykonają się już pozostałe inity.
 * Dokumentacja: https://community.bistudio.com/wiki/Arma_3:_Functions_Library#Pre_and_Post_Init
*/

if (hasInterface) then {

  #include "briefing.hpp"
  #include "\a3\ui_f\hpp\defineDIKCodes.inc"
  
  // Intro
  ["CBA_loadingScreenDone", {
    if (didJIP) exitWith {};
    0 spawn FUNC(intro);
  }] call CBA_fnc_addEventHandler;

  ["[Operation Anvil]", QGVAR(openComputer), LLSTRING(Action_OpenComputer), {
    // Condition: canInteract
    if (player getVariable [QGVAR(isArtGunner), false]) then {
      createDialog QGVAR(GUI_TargetMenu);
    };
  }, {}, [DIK_P, [false, false, false]]] call CBA_fnc_addKeybind;

  call (compileScript ["scripts\addZeusModules.sqf"]);
  call (compileScript ["scripts\addInteractions.sqf"]);

  player setUnitTrait ["camouflageCoef", 0.6];
  player setUnitTrait ["audibleCoef", 0.45];
  player setUnitTrait ["loadCoef", 0.5];
  player disableConversation true;
  enableSaving [false, false];
  enableSentences false;

  "LightShafts" ppEffectAdjust [0.2, 1, 0.8, 0.2];
  private _condition = {ace_player getVariable [QGVAR(isCommander), false] && {missionNamespace getVariable [QGVAR(supplyDrop), 0] isEqualTo 1}};
  private _ammoDrop = ["ammo","Wezwij zrzut zaopatrzenia","",{params ["_player"];["Krzyc_supplyDrop", [_player]] call CBA_fnc_serverEvent;},_condition] call ace_interact_menu_fnc_createAction;
  [ace_player, 1, ["ACE_SelfActions"], _ammoDrop] call ace_interact_menu_fnc_addActionToObject;

  GVAR(scotopicCC) = ppEffectCreate ["colorCorrections", 1502];
  GVAR(scotopicCC) ppEffectForceInNVG false;
  [0] call FUNC(aceScotopicEffects);

  player addEventHandler ["FiredMan", {
	  params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_vehicle"];
    if (_weapon isNotEqualTo "rhs_weap_M590_5RD") exitWith {};
	  [_unit] call FUNC(breachDoor);		
  }];
};

if (isServer) then {
  [{0 spawn FUNC(lockDoors);}, [], 60] call CBA_fnc_waitAndExecute;
};