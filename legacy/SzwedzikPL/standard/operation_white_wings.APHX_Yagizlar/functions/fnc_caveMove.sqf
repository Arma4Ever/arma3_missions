#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Moves player in & out of cave
 */

params ["_mode"];

private _target = missionNamespace getVariable [
  ["mission_cave_entrance", "mission_cave_exit"] select (_mode == "in"),
  objNull
];

if (isNull _target) exitWith {};

resetCamShake;
private _stoneDropper = player getVariable [QGVAR(stoneDropper), objNull];
if !(isNull _stoneDropper) then {
  deleteVehicle _stoneDropper;
};

{deleteVehicle _x} forEach GVAR(caveCollapseSounds);
GVAR(caveCollapseSounds) = [];

0 cutText ["<t size='1.5'>WCZYTYWANIE...</t>", "BLACK FADED", -1, true, true];

sleep 0.25;

ace_player setPos (_target modelToWorld [0, 0, 0.3]);
ace_player setDir (getDir _target);

if (_mode == "in" && {missionNamespace getVariable [QGVAR(caveCollapseInProgress), false]}) then {
  0 spawn FUNC(caveCollapseClient);
};

sleep 0.001;

0 call FUNC(checkCavePresence);
