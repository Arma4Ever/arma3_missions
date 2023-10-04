/***********************************************************************
    XEH_postInit.sqf
    Poniższy kod wykona się na serwerze oraz u każdego gracza po wczytaniu wszystkich elementów misji
************************************************************************/
trig_zal_1 setTriggerInterval 60;
trig_zal_2 setTriggerInterval 60;
trig_zal_3 setTriggerInterval 60;
if (hasInterface) then {

  0 spawn {
  sleep 1;
private _rearm = ["naprawa","Serwis Pojazdów","",{[25, [], {[] call Krzyc_fnc_rearm}, {hint "Przerwano"}, "Naprawianie"] call ace_common_fnc_progressBar},{true}] call ace_interact_menu_fnc_createAction;
[depot, 0, ["ACE_MainActions"], _rearm] call ace_interact_menu_fnc_addActionToObject;
};

  ["CBA_loadingScreenDone", {
  if (didJIP) exitWith {};
  [] spawn Krzyc_fnc_intro;
}] call CBA_fnc_addEventHandler;
};

if (isServer) then {
  [uav_1] joinSilent createGroup west; //No acces when in one group
  [uav_2] joinSilent createGroup west;
  [uav_3] joinSilent createGroup west;
  [uav_4] joinSilent createGroup west;
  deleteMarker "mrk_s";deleteMarker "mrk_d";
  //Mi24 has no radar warning
  heli_1 addEventHandler ["IncomingMissile", {
	params ["_target", "_ammo", "_vehicle", "_instigator"];
  [heli_1,["warning",500,1]] remoteExec ["say3D"];
}];
heli_2 addEventHandler ["IncomingMissile", {
params ["_target", "_ammo", "_vehicle", "_instigator"];
[heli_2,["warning",500,1]] remoteExec ["say3D"];
}];
  0 spawn {
    sleep 9;
    private _data = call compile preprocessFileLineNumbers "scripts\data_map.sqf";
    private _lastUpdate = CBA_missionTime;
    private _count = count _data;
    private _counter = 0;
    {
      _x params ["_model", "_posWorld", "_vector"];
      private _object = createSimpleObject [_model, [0,0,0]];
      _object setPosWorld _posWorld;
      _object setVectorDirAndUp _vector;
      _counter = _counter + 1;
      if ((CBA_missionTime - _lastUpdate) > 0.98) then {
        missionNamespace setVariable ["mission_mapSpawn", [true, _counter, _count, false], true];
        _lastUpdate = CBA_missionTime;
      };
      sleep 0.01;
    } forEach _data;
    missionNamespace setVariable ["mission_mapSpawn", [true, _counter, _count, true], true];
  0 execVM "scripts\artySpawn.sqf";
  };
};
