#include "script_component.hpp"

params ["_unit"];

// prevent the placing unit from running
[_unit, "forceWalk", "Krzyc_fire", true] call ace_common_fnc_statusEffect_set;
[_unit, "blockThrow", "Krzyc_fire", true] call ace_common_fnc_statusEffect_set;

// create campfire
private _fire = createVehicle ["Land_FirePlace_F", [0, 0, 0], [], 0, "CAN_COLLIDE"];
GVAR(campfire) = _fire;

// prevent collisions
["ace_common_enableSimulationGlobal", [_fire, false]] call CBA_fnc_serverEvent;

// pfh that runs while placement is in progress

GVAR(deployPFH) = [{
    (_this #0) params ["_unit", "_fire"];

        private _basePos = eyePos _unit vectorAdd ([sin getDir _unit, +cos getDir _unit, 0] vectorMultiply 2.0);

        private _angle = getDir _unit;

        // _v1 forward from the player, _v2 to the right, _v3 points away from the ground
        private _v3 = surfaceNormal _basePos;
        private _v2 = [sin _angle, +cos _angle, 0] vectorCrossProduct _v3;
        private _v1 = _v3 vectorCrossProduct _v2;

        // Stick the campfire to the ground
        _basePos set [2, getTerrainHeightASL _basePos];
        _fire setPosASL _basePos;
        _fire setVectorDirAndUp [_v1, _v3];
        GVAR(firePos) = _basePos;
}, 0, [_unit, _fire]] call CBA_fnc_addPerFrameHandler;

// add mouse button action and hint
["Postaw Ognisko", "Anuluj"] call ace_interaction_fnc_showMouseHint;

_unit setVariable [QGVAR(Place), [
    _unit, "DefaultAction",
    {GVAR(deployPFH) != -1},
    {[_this select 0] call FUNC(placeConfirm)}
] call ace_common_fnc_addActionEventHandler];

_unit setVariable [QGVAR(isPlacing), true, true];
