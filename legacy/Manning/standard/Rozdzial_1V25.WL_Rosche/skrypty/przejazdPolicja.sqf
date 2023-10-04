if(!hasInterface && !isDedicated) then {

_start = _this select 0;
_end = _this select 1;
_ilosc = _this select 2;
_klasaCrew = "pam_policja_drogowka_11";
_strona = CIVILIAN;



for "_i" from 1 to _ilosc do {
	_dir = _start getRelDir (getMarkerPos _end);
	_klasaPojazd = selectRandom ["vil_sprinter_pol","vil_mondeo_pol","opel_amb"];
	_pojazd = _klasaPojazd createVehicle getPos _start;
	
	sleep 1;
	
	_pojazd setDir _dir;
	_grupaARMOR = createGroup _strona;
	_soldaten = nil;
	_klasaCrew createUnit [getPos _pojazd, _grupaARMOR,"_soldaten = this;"];
	if(!alive driver _pojazd) then {_soldaten moveInDriver _pojazd;} else {_soldaten moveInGunner _pojazd};
	_soldaten setSkill (selectRandom [0.5,0.6,0.7,0.8]);
	doStop _soldaten;
	_grupaARMOR setBehaviour "SAFE";
	_pojazd forceSpeed 20;
	(driver _pojazd) doMove (getMarkerPos _end);
	_pojazd animate ["BeaconsStart",1];
	null = [_pojazd, _soldaten, _end] execVM "skrypty\przejazdPolicjaCleanup.sqf";
	[[_pojazd], "skrypty\przejazdPolicjaSound.sqf"] remoteExec ["execVM", 0, true];
	
	sleep 4;
};

};


