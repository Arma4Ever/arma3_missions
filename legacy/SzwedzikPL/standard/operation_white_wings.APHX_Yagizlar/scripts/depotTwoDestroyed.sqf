#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Handles depot two destruction sequence
 */

if !(isServer) exitWith {};
if (missionNamespace getVariable [QGVAR(depotTwoDestroyed), false]) exitWith {};
missionNamespace setVariable [QGVAR(depotTwoDestroyed), true, true];

[QGVAR(zeusLog), "depot 2 destroyed"] call CBA_fnc_globalEvent;

// Destrunction client mark
missionNamespace setVariable [QGVAR(caveCollapseInProgress), true, true];
0 spawn {
  sleep 0.2;
  [QGVAR(caveCollapseInProgress), 0] call CBA_fnc_globalEvent;
};

// Kill lights
0 spawn {
  sleep 2;
  for "_i" from 1 to 9 do {
    (missionNamespace getVariable [format ["mission_cave_amb1_lamp_%1", _i], objNull]) setDamage 1;
  };
  sleep 2;
  for "_i" from 1 to 15 do {
    (missionNamespace getVariable [format ["mission_cave_amb2_lamp_%1", _i], objNull]) setDamage 1;
  };
};

// Collapse sequence
0 spawn {
  sleep 2;
  if (is3DENPreview) then {systemChat "drop 1";};
  [[143.937,162.845,530.729], 522.285, 346.035, "Land_R_rock_general2"] spawn FUNC(rockDropServer);

  sleep 4;
  if (is3DENPreview) then {systemChat "drop 2";};
  [[122.73,155.639,528.872], 522.433, 0, "Land_R_rock_general2"] spawn FUNC(rockDropServer);

  // Wayout

  sleep 11;
  if (is3DENPreview) then {systemChat "drop 3";};
  [[110.005,174.637,529.198], 520.666, 225.358, "Land_R_rock_general2"] spawn FUNC(rockDropServer);

  sleep 6;
  if (is3DENPreview) then {systemChat "drop 4";};
  [[92.8587,159.103,526.949], 520.906, 187.872, "Land_R_rock_general2"] spawn FUNC(rockDropServer);

  sleep 6;
  if (is3DENPreview) then {systemChat "drop 5";};
  [[88.131,126.192,525.875], 519.86, 213.305, "Land_R_rock_general2"] spawn FUNC(rockDropServer);

  sleep 6;
  if (is3DENPreview) then {systemChat "drop 6";};
  [[79.5239,105.783,525.229], 518.311, 61.773, "Land_R_rock_general1"] spawn FUNC(rockDropServer);

  sleep 8;
  if (is3DENPreview) then {systemChat "drop 7";};
  [[57.7925,97.517,524.709], 517.195, 60.9002, "Land_R_rock_general1"] spawn FUNC(rockDropServer);

  sleep 11;
  // Down
  if (is3DENPreview) then {systemChat "drop 8";};
  [[68.448,84.9527,524.13], 516.75, 330.43, "Land_R_rock_general1"] spawn FUNC(rockDropServer);

  sleep 6;
  if (is3DENPreview) then {systemChat "drop 9";};
  [[91.5141,95.0713,525.461], 518.288, 61.773, "Land_R_rock_general1"] spawn FUNC(rockDropServer);

  sleep 6;
  if (is3DENPreview) then {systemChat "drop 10";};
  [[100.027,78.0648,524.452], 516.719, 61.773, "Land_R_rock_general1"] spawn FUNC(rockDropServer);

  sleep 6;
  if (is3DENPreview) then {systemChat "drop 11";};
  [[77.2095,68.8449,522.13], 514.574, 83.4954, "Land_R_rock_general1"] spawn FUNC(rockDropServer);

  sleep 6;
  if (is3DENPreview) then {systemChat "drop 12";};
  [[71.5469,51.6126,522.058], 514.038, 86.0796, "Land_R_rock_general1"] spawn FUNC(rockDropServer);

  sleep 6;
  if (is3DENPreview) then {systemChat "drop 13";};
  [[105.496,58.2076,524.344], 516.198, 61.773, "Land_R_rock_general1"] spawn FUNC(rockDropServer);

  sleep 9;
  if (is3DENPreview) then {systemChat "drop 14";};
  [[116.714,48.4597,524.479], 516.652, 61.773, "Land_R_rock_general1"] spawn FUNC(rockDropServer);

  sleep 7;
  if (is3DENPreview) then {systemChat "drop 15";};
  [[105.715,25.4209,527.876], 520.698, 61.773, "Land_R_rock_general1"] spawn FUNC(rockDropServer);

  sleep 9;
  if (is3DENPreview) then {systemChat "drop 16";};
  [[81.2388,21.2973,527.492], 519.497, 61.773, "Land_R_rock_general1"] spawn FUNC(rockDropServer);

  sleep 22;
  if (is3DENPreview) then {systemChat "drop 17";};
  [[51.4691,14.4385,517.999], 509.873, 160.285, "Land_R_rock_general1"] spawn FUNC(rockDropServer);

  [QGVAR(zeusLog), "collapse steps end"] call CBA_fnc_globalEvent;

  sleep 3;

  private _trappedOperators = ([112.776, 91.402, 0] nearEntities ["B_recon_F", 250]) inAreaArray [[209.828, 73.326, 0], 171.733, 171.733, 0, false, 26.407];

  {
    private _pos = getPosASL _x;
    private _startPos = _pos vectorAdd [0, 0, 30];
    [_startPos, _pos # 2, getDir _x, "Land_R_rock_general1"] spawn FUNC(rockDropServer);
    sleep 1.5;
    _x setDamage 1;
    sleep (0.5 + (random 3));
  } forEach _trappedOperators;

  private _caveObjects = nearestObjects [
    [149.866, 91.992, 0],
    [
      "plp_bo_BeachTorchA",
      "Land_ladderEP1",
      "Land_PortableLight_double_F",
      "ReammoBox_F",
      "Land_Campfire_F",
      "plp_base_bo_Furniture_Seat"
    ],
    125,
    true
  ];
  {deleteVehicle _x} forEach _caveObjects;

  [QGVAR(zeusLog), "collapse full end"] call CBA_fnc_globalEvent;

  missionNamespace setVariable [QGVAR(caveCollapseInProgress), false, true];
};

// Destruction sequence
0 spawn {
  // Remove depot
  deleteVehicle (missionNamespace getVariable ["mission_depot_2", objNull]);

  // Extra detonations
  sleep 0.25;
  {
    private _missile = "ammo_Missile_Cruise_01" createVehicle _x;
    _missile setPos _x;
    triggerAmmo _missile;
    _missile setDamage 1;
    sleep (0.2 + (random 0.1));
  } forEach [
    [162.083,152.146,0.],
    [155.493,159.311, 0],
    [144.66,148.964, 0],
    [143.265,157.721, 0]
  ];
  sleep 4;
  [QGVAR(surfaceQuake), 0] call CBA_fnc_globalEvent;

  sleep 8;
  [QGVAR(zeusLog), "depot 2 destroyed flag"] call CBA_fnc_globalEvent;
  [LOGIC_DEPOT_2_DESTR, true] call A3CS_fnc_setLogicFlagValue;

  sleep 3;
  // Sound alarm
  [QGVAR(soundAlarm), 0] call CBA_fnc_localEvent;
};
