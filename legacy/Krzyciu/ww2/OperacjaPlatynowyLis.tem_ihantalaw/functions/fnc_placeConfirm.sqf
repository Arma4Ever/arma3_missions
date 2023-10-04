#include "script_component.hpp"

params ["_unit"];

[_unit, "forceWalk", "Krzyc_fire", false] call ace_common_fnc_statusEffect_set;
[_unit, "blockThrow", "Krzyc_fire", false] call ace_common_fnc_statusEffect_set;

// remove item from inventory
_unit removeItem "ACE_MRE_CreamTomatoSoup";

// delete placement dummy and create real fire
[{
    if (isNull GVAR(campfire)) exitWith {};

    params ["_unit"];

    deleteVehicle GVAR(campfire);

    private _fire = createVehicle ["FirePlace_burning_F", [0, 0, 0], [], 0, "NONE"];
    private _basePos = GVAR(firePos);

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
    GVAR(campfire) = objNull;
    
}, [_unit], 1] call CBA_fnc_waitAndExecute;

// remove deployment pfh
[GVAR(deployPFH)] call CBA_fnc_removePerFrameHandler;
GVAR(deployPFH) = -1;

// remove mouse button actions
call ace_interaction_fnc_hideMouseHint;

[_unit, "DefaultAction", _unit getVariable [QGVAR(Place), -1]] call ace_common_fnc_removeActionEventHandler;

// play animation
[_unit, "PutDown"] call ace_common_fnc_doGesture;

_unit setVariable [QGVAR(isPlacing), false, true];
