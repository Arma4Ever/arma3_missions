if(!hasInterface && !isDedicated) then {
_pozycje = _this select 0;

_grupaOkop = createGroup civilian;
_klasyJed = ["LIB_SOV_sergeant","LIB_SOV_smgunner","LIB_SOV_smgunner","LIB_SOV_mgunner","LIB_SOV_medic","LIB_SOV_AT_grenadier","LIB_SOV_AT_grenadier","LIB_SOV_LC_rifleman","LIB_SOV_rifleman","LIB_SOV_rifleman","LIB_SOV_rifleman"];
_soldaten = nil;
_posture = ["MIDDLE", "UP"];
{
_jedDoSpawnu = selectRandom _klasyJed;
_jedDoSpawnu createUnit [[0,0], _grupaOkop,"_soldaten = this"];
_soldaten setPos (getPos _x);
_isStanding = selectRandom _posture; 
_soldaten setUnitPos _isStanding;
_soldaten setDamage 1;
sleep 0.1;} forEach _pozycje;

deleteGroup _grupaOkop;};
