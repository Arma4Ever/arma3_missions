if(hasInterface) exitWith {};

_junkers = _this select 0;

_i = 0;

sleep ([5,25] call BIS_fnc_randomInt);

detach _junkers;

_junkers setDamage 1;