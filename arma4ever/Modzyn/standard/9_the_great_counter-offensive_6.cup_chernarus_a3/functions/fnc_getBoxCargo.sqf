#include "script_component.hpp"

params ["_object"];

private _inventory = getItemCargo _object;
private _magazine = getMagazineCargo _object;

private _output = [];

for "_i" from 0 to ((count (_inventory # 0)) - 1) do {
_output pushBack [((_inventory # 0) # _i), ((_inventory # 1) # _i)];
};

for "_i" from 0 to ((count (_magazine # 0)) - 1) do {
_output pushBack [((_magazine # 0) # _i), ((_magazine # 1) # _i)];
};

_output