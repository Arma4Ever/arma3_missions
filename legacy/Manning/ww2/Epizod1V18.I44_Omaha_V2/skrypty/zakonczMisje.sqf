if(hasInterface) exitWith {};

_unit = _this select 0;


[_unit, ["morseZakoncz", 100, 1]] remoteExec ["say3d", -2, false];

sleep 33;

zakonczMisje = true;
publicVariable "zakonczMisjeMisje";

sleep 2;

{[[],"introOutro\napisyKoncowe.sqf"] remoteExec ["BIS_fnc_execVM",_x,false];} forEach allPlayers;
