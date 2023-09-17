#include "script_component.hpp"

params ["_value", "_uncon", "_unit"];
_unit setVariable ["ace_medical_damageThreshold", 10, true];
switch (_value) do
{

	case "low": {
    for "_i" from 0 to 4 do {
      [_unit, 0.2, "body", "vehiclecrash"] call ACEFUNC(medical,addDamageToUnit)
    };
  };

	case "med": {
    for "_i" from 0 to 6 do {
      [_unit, 0.2, "body", "vehiclecrash"] call ACEFUNC(medical,addDamageToUnit)
    };
  };

	case "high": {
    for "_i" from 0 to 8 do {
      [_unit, 0.2, "body", "vehiclecrash"] call ACEFUNC(medical,addDamageToUnit);
    };
  };

  default {
    [_unit, 0.4, "body", "vehiclecrash"] call ACEFUNC(medical,addDamageToUnit)
  };

};
if (_uncon) then {
	[_unit, true] call ACEFUNC(medical_engine,setUnconsciousAnim);
  [_unit, true, 9999, false] call ACEFUNC(medical,setUnconscious);
} else {
	[_unit, true] call ACEFUNC(medical_engine,setUnconsciousAnim);
  [_unit, true, 9999, false] call ACEFUNC(medical,setUnconscious);
	sleep 3;
	[QGVAR(playAnimInjured), _unit] call CBA_fnc_GlobalEvent;
};
