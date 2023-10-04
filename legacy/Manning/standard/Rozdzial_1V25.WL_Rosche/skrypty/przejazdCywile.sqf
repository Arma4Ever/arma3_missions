if(!hasInterface && !isDedicated) then {

_start = _this select 0;
_end = _this select 1;
_ilosc = _this select 2;

_strona = CIVILIAN;



for "_i" from 1 to _ilosc do {
	_dir = _start getRelDir (getMarkerPos _end);
	_klasaPojazd = selectRandom ["C_Offroad_02_unarmed_F","C_Offroad_02_unarmed_F_black","C_Offroad_02_unarmed_F_blue","C_Offroad_02_unarmed_F_green","C_Offroad_02_unarmed_F_orange","C_Offroad_01_F","C_Offroad_01_repair_F","C_SUV_01_F","C_Hatchback_01_F","C_Hatchback_01_sport_F","RDS_Gaz24_Civ_03","RDS_Gaz24_Civ_01","RDS_Gaz24_Civ_02","RDS_Golf4_Civ_01","RDS_tt650_Civ_01"];
	_pojazd = _klasaPojazd createVehicle getPos _start;
	_klasaCrew = selectRandom ["RDS_Assistant","RDS_Citizen_Random","RDS_Citizen2","RDS_Citizen1","RDS_Citizen3","RDS_Citizen4","RDS_Doctor","RDS_Functionary1","RDS_Functionary2","RDS_Functionary2","RDS_Priest","C_man_p_beggar_F","C_man_polo_1_F","C_man_polo_2_F","C_man_polo_3_F","C_man_polo_4_F","C_man_polo_5_F","C_man_polo_6_F","C_man_shorts_1_F","C_man_1_1_F","C_man_1_2_F","C_man_1_3_F","C_man_p_fugitive_F","C_man_p_shorts_1_F","C_man_shorts_2_F","C_man_shorts_3_F","C_man_shorts_4_F"];
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
	null = [_pojazd, _soldaten, _end] execVM "skrypty\przejazdCywileCleanup.sqf";
	
	sleep 4;
};

};


