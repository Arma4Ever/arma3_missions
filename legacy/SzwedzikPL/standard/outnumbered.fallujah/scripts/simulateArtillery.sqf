#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Simulates artillery fire in city
 */

if !(isServer) exitWith {};

waitUntil {
  missionNamespace getVariable [QGVAR(firstIntroEnded), false]
};

private _specialLocations = [
  // Chapman
  [4886.95, 5259.45, 0],
  // Spawn ALPHA
  [3410.42,6330.03,0],
  // Spawn BRAVO
  [3064.09, 5330.64, 0],
  // Spawn CHARLIE
  [4182.7, 3564.54 ,0],
  // Spawn DELTA
  [3395.19, 4167.79, 0],
  // SUPER-34
  [4211.37, 5888.31, 0],
  // TROJAN-06
  [4368.68, 4468.08, 0],
  // ROMEO-65
  [4179.97, 4040.6, 0],
  // HOTEL
  [3953.19, 5245.19, 0],
  // LIMA
  [3580.51, 5750.86, 0],
  // OSCAR
  [3806.86, 4734.92, 0]
];
while {fsf_simArtillery} do {
  private _players = ((playableUnits + switchableUnits) select {alive _x}) call BIS_fnc_arrayShuffle;
  if (_players isEqualTo []) then {continue;};

  private _goodPos = false;
  private _pos = [];
  while {!_goodPos} do {
    private _target = selectRandom _players;
    _pos = _target getPos [random 390, random 360];
    _goodPos = (
      // ~150m is safe distance from 155mm without cover
      ((_players inAreaArray [_pos, 155, 155]) isEqualTo []) &&
      // Do not fire at special locations
      {(_specialLocations findIf {(_x distance2D _pos) < 80}) == -1}
    );
    sleep 0.1;
  };
  _pos set [2, 300];
  private _shell = createVehicle ["Sh_155mm_AMOS", [0, 0, 300], [], 0, "CAN_COLLIDE"];
  _shell setPosATL _pos;
  _shell setVelocity [0, 0, -60];
  [QGVAR(say3D), [_shell, selectRandom ["shell1", "shell2", "shell3", "shell4"]]] call CBA_fnc_globalEvent;

  sleep (5 + (random 17));
};
