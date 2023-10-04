if(!hasInterface && !isDedicated) then {_pozycje = _this select 0;

_grupaOkop = createGroup west;
_klasyJed = ["LIB_GER_soldier_camo3_base","LIB_GER_soldier_camo2_base","LIB_GER_Soldier2_base","LIB_GER_rifleman","LIB_GER_soldier_camo5_base","LIB_GER_stggunner","LIB_GER_scout_smgunner","LIB_GER_smgunner","LIB_GER_scout_unterofficer","LIB_GER_unterofficer"];
_soldaten = nil;
_posture = ["MIDDLE", "UP"];
{
_jedDoSpawnu = selectRandom _klasyJed;
_jedDoSpawnu createUnit [[0,0], _grupaOkop,"_soldaten = this"];
_soldaten setPos (getPos _x);
_isStanding = selectRandom _posture; 
_soldaten setUnitPos _isStanding;
_soldaten setSkill (selectRandom [0.5,0.6,0.7,0.8]);
doStop _soldaten;
sleep 0.1;} forEach _pozycje;};
