#include "script_component.hpp"

params ["_class" ,"_inventory", "_pos"];

private _object = createVehicle [_class, _pos, [], 0, "CAN_COLLIDE"];
clearItemCargoGlobal _object;
clearMagazineCargoGlobal _object;

private _itemsCount = (count (_inventory # 0) - 1);

{
    _object addItemCargoGlobal _x;
} foreach _inventory;

[_object, 2] call ace_cargo_fnc_setSize;