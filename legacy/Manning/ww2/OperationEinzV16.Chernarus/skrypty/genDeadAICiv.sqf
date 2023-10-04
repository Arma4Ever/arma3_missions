if(!hasInterface && !isDedicated) then {
_pozycje = _this select 0;

_grupaOkop = createGroup civilian;
_klasyJed = ["LIB_CIV_Citizen_1","LIB_CIV_Citizen_2","LIB_CIV_Citizen_3","LIB_CIV_Citizen_4","LIB_CIV_Citizen_5","LIB_CIV_Citizen_6","LIB_CIV_Citizen_7","LIB_CIV_Citizen_8","LIB_CIV_Villager_1","LIB_CIV_Villager_4","LIB_CIV_Villager_2","LIB_CIV_Villager_3","LIB_CIV_Woodlander_1","LIB_CIV_Woodlander_2","LIB_CIV_Woodlander_3","LIB_CIV_Woodlander_4"];
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
