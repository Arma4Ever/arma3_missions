if(hasInterface) exitWith {};

_pozycje = _this select 0;
_i = 0;

{
sleep selectRandom[1,2,3];
_poz = getPos _x;
_smokiArray = ["G_40mm_Smoke", "G_40mm_SmokeBlue", "G_40mm_SmokeRed"];
_smoke = selectRandom _smokiArray;

_shell = _smoke createVehicle _poz;

deleteVehicle _x;
} forEach _pozycje;