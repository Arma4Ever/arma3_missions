#include "script_component.hpp"
params ["_player", "_pos"];

private _group = createGroup [east, true];
if (isNull _group) exitWith {
    false
};
private _class = "rhs_vdv_recon_rifleman";

private _unit = _group createUnit [_class, _pos, [], 0, "NONE"];
_unit setPosASL _pos;
["a4es_common_switchMove", [_unit, "amovppnemstpsraswrfldnon"]] call CBA_fnc_globalEvent;
_unit addGoggles "Armband_White_medium2";
_unit setUnitPos "UP";
_unit setVariable [QGVAR(isAttacker), true];
_unit setSkill GVAR(attackerSkill);

_unit addItem (selectRandom GVAR(attackersItemsData));
_unit setVariable [QGVAR(attackPlayer), _player];
private _attackers = _player getVariable [QGVAR(attackers), []];
_attackers pushBack _unit;
_player setVariable [QGVAR(attackers), _attackers];

_group spawn {
    sleep 1.5;
    [_this, GVAR(maxAttackerDistance)] spawn lambs_wp_fnc_taskRush;
};

true