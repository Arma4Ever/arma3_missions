//przed wrzuceniem na serwer zastapic (isServer) na (!hasInterface && !isDedicated)
// inicjacja null = [od, do] execVM "skrypty\genAI.sqf";

if ((!hasInterface && !isDedicated)) then
{
	_pozycjes = _this select 0;
	_pozycjek = _this select 1;
	_strona = east;
	_klasy = ["LIB_SOV_LC_rifleman",
"LIB_SOV_LC_rifleman_summer","LIB_SOV_LC_rifleman_summer","LIB_SOV_LC_rifleman_summer",
"LIB_SOV_unequip",
"LIB_SOV_sapper",
"LIB_SOV_scout_smgunner",
"LIB_SOV_medic",
"LIB_SOV_mgunner",
"LIB_SOV_gun_crew",
"LIB_SOV_gun_sergeant"];
	_grupaOkop = createGroup _strona;
	_klasyJed = _klasy;
	_soldaten = nil;
	_posture = ["UP"];
	for "_i" from _pozycjes to _pozycjek do
	{
		_jed = ("pos_" + str(_i));
		_jed = missionNamespace getVariable [_jed, objNull];
		_jedDoSpawnu = selectRandom _klasyJed;
		_jedDoSpawnu createUnit [getPosASL _jed, _grupaOkop,"_soldaten = this; this disableAI 'path';reload _unit;"];
		_soldaten setPosASL (getPosASL _jed);
		_isStanding = selectRandom _posture;
		_soldaten setUnitPos _isStanding;
		_soldaten setSkill (selectRandom [0.8,0.9]);
		doStop _soldaten;
		sleep 0.1;
	};
};
