//wyjebac graczy
if(hasInterface) exitWith {};

_unit = _this select 0;

_opcja = selectRandom ["STRZELEC_1", "STRZELEC_2", "STRZELEC_3"];

_ubrania = ["U_Marshal", "U_LIB_CIV_Functionary_1", "U_LIB_CIV_Functionary_2", "U_LIB_CIV_Functionary_3", "U_LIB_CIV_Functionary_4"];
_plecaki = [""];
_szelki = ["V_LIB_US_AB_Vest_Carbine","V_LIB_US_AB_Vest_Garand","V_LIB_US_AB_Vest_Thompson","V_LIB_US_Vest_Carbine_eng","V_LIB_US_Vest_Carbine_nco","V_LIB_US_Vest_Thompson_nco"];
_czapki = [""];

sleep 1;

_glos = selectRandom ["male01ENG","male02ENG","male03ENG","male04ENG","male05ENG","male06ENG","male07ENG","male08ENG","male09ENG","male10ENG","male11ENG","male12ENG"];
[_unit, _glos] remoteExec ["setSpeaker", 0, _unit];
removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

sleep 1;

if(_opcja == "STRZELEC_1") then 
{
	_unit forceAddUniform selectRandom _ubrania;
	_unit addVest selectRandom _szelki;
	_unit addHeadgear selectRandom _czapki;
	_unit addBackpackGlobal selectRandom _plecaki;
	_unit addWeaponGlobal selectRandom ["LIB_M1A1_Thompson"];
	
	_unit addItem "LIB_30Rnd_45ACP";
	_unit addItem "LIB_30Rnd_45ACP";
	_unit addItem "LIB_30Rnd_45ACP";
	_unit addItem "LIB_30Rnd_45ACP";
	_unit addItem "LIB_30Rnd_45ACP";
};

if(_opcja == "STRZELEC_2") then 
{
	_unit forceAddUniform selectRandom _ubrania;
	_unit addVest selectRandom _szelki;
	_unit addHeadgear selectRandom _czapki;
	_unit addBackpackGlobal selectRandom _plecaki;
	_unit addWeaponGlobal selectRandom ["LIB_M1_Carbine"];
	
	_unit addItem "LIB_15Rnd_762x33";
	_unit addItem "LIB_15Rnd_762x33";
	_unit addItem "LIB_15Rnd_762x33";
	_unit addItem "LIB_15Rnd_762x33";
	_unit addItem "LIB_15Rnd_762x33";
	_unit addItem "LIB_15Rnd_762x33";
	_unit addItem "LIB_15Rnd_762x33";
	_unit addItem "LIB_15Rnd_762x33";
	_unit addItem "LIB_15Rnd_762x33";
	_unit addItem "LIB_15Rnd_762x33";
};

if(_opcja == "STRZELEC_3") then 
{
	_unit forceAddUniform selectRandom _ubrania;
	_unit addVest selectRandom _szelki;
	_unit addHeadgear selectRandom _czapki;
	_unit addBackpackGlobal selectRandom _plecaki;
	_unit addWeaponGlobal selectRandom ["LIB_M1A1_Carbine"];
	
	_unit addItem "LIB_15Rnd_762x33";
	_unit addItem "LIB_15Rnd_762x33";
	_unit addItem "LIB_15Rnd_762x33";
	_unit addItem "LIB_15Rnd_762x33";
	_unit addItem "LIB_15Rnd_762x33";
	_unit addItem "LIB_15Rnd_762x33";
	_unit addItem "LIB_15Rnd_762x33";
	_unit addItem "LIB_15Rnd_762x33";
	_unit addItem "LIB_15Rnd_762x33";
	_unit addItem "LIB_15Rnd_762x33";
};