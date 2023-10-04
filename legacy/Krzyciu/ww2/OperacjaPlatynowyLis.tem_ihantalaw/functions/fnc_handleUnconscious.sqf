#include "script_component.hpp"

params ["_unit"];

if (!local _unit) exitWith {};

if (_unit getVariable [QGVAR(isPlacing), false]) then {
    [_unit] call FUNC(deployCancel);
};
