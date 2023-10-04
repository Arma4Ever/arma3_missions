//przed wrzuceniem na serwer zastapic (isServer) na (!hasInterface && !isDedicated)
// inicjacja null = [[pozycje], strona, [klasy]] execVM "folder\genAI.sqf";

if(!hasInterface && !isDedicated) then {
	_pozycje = _this select 0;
	_strona = _this select 1;
	_klasy = _this select 2;
	_grupaOkop = createGroup _strona;
	_klasyJed = _klasy;
	_soldaten = nil;
	_posture = ["MIDDLE", "UP"];
	{
	_jedDoSpawnu = selectRandom _klasyJed;
	_jedDoSpawnu createUnit [getPosASL _x, _grupaOkop,"_soldaten = this; this disableAI 'path';_null = [this] execVM 'skrypty\genPartyzanci.sqf';reload _unit;"];
	_soldaten setPosASL (getPosASL _x);
	_isStanding = selectRandom _posture; 
	_soldaten setUnitPos _isStanding;
	_soldaten setSkill (selectRandom [0.6,0.7,0.8]);
	doStop _soldaten;
	sleep 0.1;} forEach _pozycje;};
	
