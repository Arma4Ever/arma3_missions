#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Starts exfil
 */

if (missionNamespace getVariable [QGVAR(exfilStarted), false]) exitWith {};
missionNamespace setVariable [QGVAR(exfilStarted), true, true];

[QGVAR(zeusLog), "Exfil started"] call CBA_fnc_globalEvent;

[LOGIC_EVAC_CALLED, true] call A3CS_fnc_setLogicFlagValue;

private _helis = [
  missionNamespace getVariable ["mission_exfil_heli_1", objNull],
  missionNamespace getVariable ["mission_exfil_heli_2", objNull]
];

{
  _x addCuratorEditableObjects [_helis, true];
} forEach allCurators;

{
  private _heli = _x;
  _heli enableDynamicSimulation false;
  _heli enableSimulationGlobal true;
  _heli hideObjectGlobal false;
  _heli allowDamage false;

  private _group = group ((crew _heli) param [0, objNull]);
  _group enableDynamicSimulation false;
  _heli flyInHeight 40;
  _heli setCollisionLight false;
  _heli disableAI "LIGHTS";
  {
    _x allowDamage false;
    _x enableSimulationGlobal true;
    _x disableAI "LIGHTS";
  } forEach (crew _heli);

  _heli setCollisionLight false;
} forEach _helis;

missionNamespace setVariable ["mission_start_exfil", true, true];

0 spawn {
  sleep 15;
  private _helis = [
    missionNamespace getVariable ["mission_exfil_heli_1", objNull],
    missionNamespace getVariable ["mission_exfil_heli_2", objNull]
  ];

  waitUntil {
    sleep 2;
    (_helis inAreaArray [[1681.58, 4281.9, 0], 100, 100]) isNotEqualTo []
  };

  waitUntil {
    sleep 1;
    private _players = (playableUnits + switchableUnits) select {
      (alive _x) && {!(_x getVariable ["ACE_isUnconscious", false])}
    };
    private _validPlayers =  _players inAreaArray [[1681.58, 4281.9, 0], 400, 400];
    (_validPlayers findIf {isNull (objectParent _x)}) == -1
  };

  missionNamespace setVariable ["mission_end_exfil", true, true];

  waitUntil {
    sleep 2;
    (_helis inAreaArray [[3511.555, 5816.337, 0], 1000, 1000]) isNotEqualTo []
  };

  [QGVAR(endMissionExfil), 0] call CBA_fnc_globalEvent;
};


0 spawn {
  sleep 8;
  {
    _x params ["_pos", "_wpPos1", "_wpPos2"];
    private _heli = "CUP_B_AH64D_DL_USA" createVehicle _pos;
    _heli setDir 241.449;
    _heli allowDamage false;
    private _group = createVehicleCrew _heli;
    _heli setCollisionLight false;
    _heli disableAI "LIGHTS";
    {
      _x allowDamage false;
      _x disableAI "LIGHTS";
    } forEach (units _group);
    _heli setCollisionLight false;

    private _wp1 = _group addWaypoint [_wpPos1, 0];
    _wp1 setWaypointType "MOVE";
    _wp1 setWaypointBehaviour "CARELESS";

    private _wp2 = _group addWaypoint [_wpPos2, 0];
    _wp2 setWaypointType "SAD";
    _wp2 setWaypointBehaviour "AWARE";
  } forEach [
    [[4601.6, 6327.69, 0.2], [2004.82, 5041.73, 0], [1895.68, 4330.13, 0]],
    [[4561.46, 6415.45, 0.2], [1370.38, 5171.7, 0], [1442.98, 4249.9, 0]]
  ];
};
