#include "script_component.hpp"

params ["_object"];

_object addEventHandler ["Fired", {
	params ["_unit"];

    _unit setVehicleAmmo 1;
}];