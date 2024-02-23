#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Init building with windows
 */

params ["_building"];

if !(local _building) exitWith {};

_building spawn {
    params ["_building"];

    _building allowDamage true;

    sleep (2 + (random 2));

    private _hitpoints = (getAllHitPointsDamage _building) select 0;
    if (isNil "_hitpoints") exitWith {};
    {
        private _hitpoint = _x;

        if ("glass" in _hitpoint) then {
            _building setHitPointDamage [_hitpoint, 1, false];
            sleep (0.2 + (random 0.2));
        };
    } forEach _hitpoints;

    sleep (1 + (random 1));

    _building allowDamage false;
};
