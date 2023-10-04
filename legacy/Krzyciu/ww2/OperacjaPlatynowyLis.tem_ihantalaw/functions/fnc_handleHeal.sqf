#include "script_component.hpp"

params ["_unit"];

if !(isDamageAllowed _unit) exitWith {};

private _pain = _unit getVariable ["ace_medical_pain", 0];

if (_pain > 0 && _pain < 0.1) then {
  ppEffectDestroy Krzyc_pain;
  if ((_unit getVariable ["painLvl", 0]) < 1) exitWith {};
  _unit setVariable ["painLvl", 0];
};
if (_pain > 0.1 && _pain < 0.4) then {
    [_unit, -0.05] call ace_medical_fnc_adjustPainLevel;
    if ((_unit getVariable ["painLvl", 0]) < 2) exitWith {};
    _unit setVariable ["painLvl", 1];
};
if (_pain > 0.4 && _pain <0.55) then {
    [_unit, -0.05] call ace_medical_fnc_adjustPainLevel;
    if ((_unit getVariable ["painLvl", 0]) < 3) exitWith {};
    _unit setVariable ["painLvl", 2];
};
if (_pain > 0.55 && _pain <0.89) then {
    [_unit, -0.05] call ace_medical_fnc_adjustPainLevel;
    if ((_unit getVariable ["painLvl", 0]) < 4) exitWith {};
    _unit setVariable ["painLvl", 3];
};

private _painLvl = _unit getVariable ["painLvl", 0];

switch (_painLvl) do {
    case 0 : {
    ppEffectDestroy Krzyc_pain;
  };
    case 1 : {
    _unit setVariable ["painLvl", 2.1];
    "zimno" cutRsc ["RscTitleDisplayEmpty", "PLAIN"];
    Krzyc_pain ppEffectAdjust [1, 1, 0.2, [1, 1, 1, 0], [1, 1, 1, 1], [0.33, 0.33, 0.33, 0], [0.55, 0.5, 1, 1, 1, 1, 1]];
    Krzyc_pain ppEffectCommit 1;
  };
    case 2 : {
    _unit setVariable ["painLvl", 2.1];
    _unit forceWalk false;
    Krzyc_pain ppEffectAdjust [1, 1, 0.3, [1, 1, 1, 0], [1, 1, 1, 1], [0.33, 0.33, 0.33, 0], [0.55, 0.5, 1, 1, 1, 1, 1]];
    Krzyc_pain ppEffectCommit 1;
    "zimno" cutRsc ["snow_overlay1", "PLAIN"];
  };
    case 3 : {
    _unit setVariable ["painLvl", 3.1];
    Krzyc_pain ppEffectAdjust [1, 1, 0.5, [1, 1, 1, 0], [1, 1, 1, 1], [0.33, 0.33, 0.33, 0], [0.55, 0.5, 1, 1, 1, 1, 1]];
    Krzyc_pain ppEffectCommit 1;
    "zimno" cutRsc ["snow_overlay2", "PLAIN"];
  };
    default {
  };
};
