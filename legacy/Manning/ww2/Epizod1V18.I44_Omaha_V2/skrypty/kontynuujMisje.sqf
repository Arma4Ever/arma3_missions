if(hasInterface) exitWith {};

_unit = _this select 0;


[_unit, ["morseKontynuuj", 20, 1]] remoteExec ["say3d", -2, false];

sleep 33;

kontynuujMisje = true;
publicVariable "kontynuujMisje";

sleep 2;

{[[],"introOutro\napisyKoncowe.sqf"] remoteExec ["BIS_fnc_execVM",0,false];} forEach allPlayers;
