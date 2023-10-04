#include "script_component.hpp"

params ["_unit", "_key"];

if (_key != 1 || {GVAR(deployPFH) == -1}) exitWith {};

// enable running again
[_unit, "forceWalk", "Krzyc_fire", false] call ace_common_fnc_statusEffect_set;
[_unit, "blockThrow", "Krzyc_fire", false] call ace_common_fnc_statusEffect_set;

// delete placement dummy
deleteVehicle GVAR(campfire);

// remove deployment pfh
[GVAR(deployPFH)] call CBA_fnc_removePerFrameHandler;
GVAR(deployPFH) = -1;

// remove mouse button actions
call ace_interaction_fnc_hideMouseHint;

[_unit, "DefaultAction", _unit getVariable [QGVAR(Place), -1]] call ace_common_fnc_removeActionEventHandler;
[_unit, "zoomtemp",      _unit getVariable [QGVAR(Cancel), -1]] call ace_common_fnc_removeActionEventHandler;

_unit setVariable [QGVAR(isPlacing), false, true];
