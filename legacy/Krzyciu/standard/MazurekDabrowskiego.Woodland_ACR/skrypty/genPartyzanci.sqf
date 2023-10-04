//wyjebac graczy
if(hasInterface) exitWith {};

_unit = _this select 0;

_opcja = selectRandom ["STRZELEC_1", "STRZELEC_2", "STRZELEC_3", "STRZELEC_4", "STRZELEC_5", "STRZELEC_6"];

_ubrania = ["rds_uniform_Rocker3","rds_uniform_schoolteacher","rds_uniform_Profiteer2","U_BG_Guerrilla_6_1","rds_uniform_Woodlander4","rds_uniform_Woodlander3","rds_uniform_Woodlander2"];
_plecaki = ["B_FieldPack_oli"];
_czapki = ["rds_worker_cap4","rds_Villager_cap1","rds_Woodlander_cap3","rds_Woodlander_cap2","rds_Woodlander_cap1"];

sleep 1;

_glos = selectRandom ["male02per"];
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
 _unit addBackpackGlobal selectRandom _plecaki;
	_unit addHeadgear selectRandom _czapki;
        _unit addItem "rhs_30Rnd_545x39_7N6M_plum_AK";
	_unit addWeaponGlobal selectRandom ["rhs_weap_aks74_2"];
	
	_unit addItem "rhs_30Rnd_545x39_7N6M_plum_AK";
	_unit addItem "rhs_30Rnd_545x39_7N6M_plum_AK";
	_unit addItem "rhs_30Rnd_545x39_7N6M_plum_AK";
	_unit addItem "rhs_30Rnd_545x39_7N6M_plum_AK";
	_unit addItem "rhs_30Rnd_545x39_7N6M_plum_AK";
};

if(_opcja == "STRZELEC_2") then 
{
	_unit forceAddUniform selectRandom _ubrania;
 _unit addBackpackGlobal selectRandom _plecaki;
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
 _unit addBackpackGlobal selectRandom _plecaki;
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
	_unit addHeadgear selectRandom _czapki;
        _unit addBackpackGlobal selectRandom _plecaki;
    _unit addItem "rhs_30Rnd_545x39_7N6M_AK";
	_unit addWeaponGlobal selectRandom ["rhs_weap_aks74u"];
        _unit addWeaponGlobal selectRandom ["rhs_weap_rpg75"];
	_unit addItem "rhs_30Rnd_545x39_7N6M_AK";
	_unit addItem "rhs_30Rnd_545x39_7N6M_AK";
};

if(_opcja == "STRZELEC_5") then 
{
	_unit forceAddUniform selectRandom _ubrania;
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
 _unit addBackpackGlobal selectRandom _plecaki;
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