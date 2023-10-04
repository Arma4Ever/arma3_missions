[ace_player, "AinvPknlMstpSnonWnonDnon_medic4"] call ace_common_fnc_doAnimation;

private _condition = {
    param [0] params ["_unit", "_pos"];
    ([_unit] call ace_common_fnc_isAwake)
};

private _onComplete = {
    param [0] params ["_unit", "_pos"];
    [_unit, "", 1] call ace_common_fnc_doAnimation;
    (createSimpleObject ["A3\Structures_F\System\ClutterCutter_medium_F.p3d", [0,0,0]]) setPosATL _pos;
};

private _onFailure = {
    param [0] params ["_unit"];
    [_unit, "", 1] call ace_common_fnc_doAnimation;
};

[CBA_fnc_progressBar, ["Wycinanie trawy", 6, _condition, _onComplete, _onFailure, [ace_player, player modelToWorld [0,3,0]]]] call CBA_fnc_execNextFrame;
