//(!isServer) do testów, na misje ustawiæ (hasInterface)
if(hasInterface) exitWith {};

_unit = _this select 0;

_opcja = selectRandom ["STRZELEC_1", "STRZELEC_2", "STRZELEC_3", "STRZELEC_4", "STRZELEC_5", "STRZELEC_6"];

_ubrania = ["U_BG_Guerilla1_2_F","U_BG_Guerilla1_1"];
_plecaki = ["B_FieldPack_oli"];
_szelki = ["V_LegStrapBag_coyote_F"];
_czapki = ["H_Shemag_olive","H_ShemagOpen_tan"];
sleep 1;

_glos = selectRandom ["male01per"];
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
        _unit addItem "rhsgref_30rnd_556x45_m21";
	_unit addWeaponGlobal selectRandom ["rhs_weap_m21a"];
	
	_unit addItem "rhsgref_30rnd_556x45_m21";
	_unit addItem "rhsgref_30rnd_556x45_m21";
	_unit addItem "rhsgref_30rnd_556x45_m21";
	_unit addItem "rhsgref_30rnd_556x45_m21";
	_unit addItem "rhsgref_30rnd_556x45_m21";
};

if(_opcja == "STRZELEC_2") then 
{
        _unit forceAddUniform selectRandom _ubrania;
	_unit addVest selectRandom _szelki;
	_unit addHeadgear selectRandom _czapki;
_unit addItem "rhs_10Rnd_762x54mmR_7N1";
	_unit addWeaponGlobal selectRandom ["rhs_weap_svdp_wd"];
_unit addPrimaryWeaponItem "rhs_acc_pso1m21";
	
	_unit addItem "rhs_10Rnd_762x54mmR_7N1";
	_unit addItem "rhs_10Rnd_762x54mmR_7N1";
	_unit addItem "rhs_10Rnd_762x54mmR_7N1";
	_unit addItem "rhs_10Rnd_762x54mmR_7N1";
	_unit addItem "rhs_10Rnd_762x54mmR_7N1";
	_unit addItem "rhs_10Rnd_762x54mmR_7N1";
        _unit addItem "rhs_10Rnd_762x54mmR_7N1";
};

if(_opcja == "STRZELEC_3") then 
{
        _unit forceAddUniform selectRandom _ubrania;
	_unit addVest selectRandom _szelki;
	_unit addHeadgear selectRandom _czapki;
	_unit addItem "rhs_30Rnd_762x39mm_bakelite";
	_unit addWeaponGlobal selectRandom ["rhs_weap_akmn"];
	
	_unit addItem "rhs_30Rnd_762x39mm_bakelite";
	_unit addItem "rhs_30Rnd_762x39mm_bakelite";
        _unit addItem "rhs_30Rnd_762x39mm_bakelite";
	_unit addItem "rhs_30Rnd_762x39mm_bakelite";
	_unit addItem "rhs_30Rnd_762x39mm_bakelite";
	_unit addItem "rhs_30Rnd_762x39mm_bakelite";
	_unit addItem "rhs_30Rnd_762x39mm_bakelite";

};

if(_opcja == "STRZELEC_4") then 
{
	_unit forceAddUniform selectRandom _ubrania;
	_unit addVest selectRandom _szelki;
	_unit addHeadgear selectRandom _czapki;
        _unit addBackpackGlobal selectRandom _plecaki;
        _unit addItem "rhs_30Rnd_545x39_7N6M_AK";
	_unit addWeaponGlobal selectRandom ["rhs_weap_aks74u"];
	_unit addItem "rhs_30Rnd_545x39_7N6M_AK";
	_unit addItem "rhs_30Rnd_545x39_7N6M_AK";
	_unit addItem "rhs_30Rnd_545x39_7N6M_AK";

};

if(_opcja == "STRZELEC_5") then 
{
	_unit forceAddUniform selectRandom _ubrania;
	_unit addVest selectRandom _szelki;
	_unit addHeadgear selectRandom _czapki;
        _unit addBackpackGlobal selectRandom _plecaki;
        _unit addItem "rhs_75Rnd_762x39mm";;
	_unit addWeaponGlobal selectRandom ["rhs_weap_akm"];
	
	_unit addItem "rhs_75Rnd_762x39mm";
	_unit addItem "rhs_75Rnd_762x39mm";
	_unit addItem "rhs_75Rnd_762x39mm";
	_unit addItem "rhs_75Rnd_762x39mm";
};

if(_opcja == "STRZELEC_6") then 
{
	_unit forceAddUniform selectRandom _ubrania;
	_unit addVest selectRandom _szelki;
	_unit addHeadgear selectRandom _czapki;
	_unit addItem "rhs_30Rnd_762x39mm_bakelite";
	_unit addWeaponGlobal selectRandom ["rhs_weap_akm"];
	
	_unit addItem "rhs_30Rnd_762x39mm_bakelite";
	_unit addItem "rhs_30Rnd_762x39mm_bakelite";
	_unit addItem "rhs_30Rnd_762x39mm_bakelite";
        _unit addItem "rhs_30Rnd_762x39mm_bakelite";
        _unit addItem "rhs_30Rnd_762x39mm_bakelite";
        _unit addItem "rhs_30Rnd_762x39mm_bakelite";
        _unit addItem "rhs_30Rnd_762x39mm_bakelite";

};
sleep 1;
reload _unit;
