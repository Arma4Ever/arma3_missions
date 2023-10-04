if(hasInterface) exitWith {};

_plane = _this select 0;
_dropCase = _this select 1;

if(_dropCase == 0) then {
	sleep ([82, 85] call BIS_fnc_randomInt);
	_para_1 = createVehicle ["B_Parachute_02_F", [0,0,100], [], 0, ""];
	_para_1 allowDamage false;
	_para_1 setPosATL getPos _plane;
	_box_1 = "CargoNet_01_box_F" createVehicle [0,0,100];
	
	_box_1 addItemCargoGlobal "Vest_V_LIB_US_Vest_45";
	_box_1 addItemCargoGlobal "Vest_V_LIB_US_Vest_Bar";
	_box_1 addItemCargoGlobal "Vest_V_LIB_US_Vest_Thompson_nco";
	_box_1 addItemCargoGlobal "Vest_V_LIB_US_Vest_Thompson_nco_Radio";
	_box_1 addItemCargoGlobal "Vest_V_LIB_US_Vest_Thompson";
	_box_1 addItemCargoGlobal "Vest_V_LIB_US_Vest_Medic";
	_box_1 addItemCargoGlobal "Vest_V_LIB_US_Vest_Medic2";
	_box_1 addItemCargoGlobal "Vest_V_LIB_US_Vest_Asst_MG";
	_box_1 addItemCargoGlobal "Vest_V_LIB_US_Vest_Carbine";
	_box_1 addItemCargoGlobal "Vest_V_LIB_US_Vest_Carbine_eng";
	_box_1 addItemCargoGlobal "Vest_V_LIB_US_Vest_Garand";
	_box_1 addItemCargoGlobal "Vest_V_LIB_US_Vest_Grenadier";
	_box_1 addItemCargoGlobal "Vest_V_LIB_US_Vest_Carbine_nco";
	_box_1 addItemCargoGlobal "Vest_V_LIB_US_Vest_Carbine_nco_Radio";
	_box_1 addItemCargoGlobal "Vest_V_LIB_US_Vest_M1919";
	_box_1 addBackpackCargoGlobal ["B_LIB_US_Backpack", 3];
	_box_1 addBackpackCargoGlobal ["B_LIB_US_Backpack_Bandoleer", 3];
	_box_1 addBackpackCargoGlobal ["B_LIB_US_Backpack_dday", 3];
	_box_1 addBackpackCargoGlobal ["B_LIB_US_Backpack_RocketBag_Empty", 3];
	_box_1 addBackpackCargoGlobal ["B_LIB_US_Backpack_Mk2", 3];
	_box_1 addItemCargoGlobal ["Weapon_LIB_M1_Carbine", 4];
	_box_1 addItemCargoGlobal ["Weapon_LIB_M1_Garand", 12];
	_box_1 addItemCargoGlobal ["Weapon_LIB_M1A1_Carbine", 4];
	_box_1 addItemCargoGlobal ["Weapon_LIB_M1919A6", 2];
	_box_1 addItemCargoGlobal ["Weapon_LIB_M1918A2_BAR", 2];
	_box_1 addItemCargoGlobal ["Weapon_LIB_M1A1_Thompson", 4];
	_box_1 addItemCargoGlobal ["Weapon_LIB_M3_GreaseGun", 4];
	_box_1 addItemCargoGlobal ["Weapon_LIB_FLARE_PISTOL", 12];
	_box_1 addItemCargoGlobal ["Weapon_LIB_Colt_M1911", 12];
	
	_box_1 addItemCargoGlobal ["ACE_fieldDressing", 100];
	_box_1 addItemCargoGlobal ["ACE_bloodIV", 10];
	_box_1 addItemCargoGlobal ["ACE_bloodIV_250", 40];
	_box_1 addItemCargoGlobal ["ACE_bloodIV_500", 20];
	_box_1 addItemCargoGlobal ["ACE_CableTie", 50];
	_box_1 addItemCargoGlobal ["ACE_bodyBag", 12];
	_box_1 addItemCargoGlobal ["ACE_morphine", 100];
	_box_1 addItemCargoGlobal ["ACE_packingBandage", 100];
	_box_1 addItemCargoGlobal ["ACE_plasmaIV", 10];
	_box_1 addItemCargoGlobal ["ACE_plasmaIV_250", 40];
	_box_1 addItemCargoGlobal ["ACE_plasmaIV_500", 20];
	_box_1 addItemCargoGlobal ["ACE_salineIV", 10];
	_box_1 addItemCargoGlobal ["ACE_salineIV_250", 40];
	_box_1 addItemCargoGlobal ["ACE_salineIV_500", 20];
	_box_1 addItemCargoGlobal ["ACE_tourniquet", 100];
	_box_1 addItemCargoGlobal ["ACE_surgicalKit", 2];
	
	_box_1 addItemCargoGlobal ["ACE_EntrenchingTool", 12];
	
	_box_1 addItemCargoGlobal ["LIB_US_Mk_2", 100];
	_box_1 addItemCargoGlobal ["ACE_HandFlare_Green", 60];
	_box_1 addItemCargoGlobal ["ACE_HandFlare_Red", 60];
	_box_1 addItemCargoGlobal ["ACE_HandFlare_White", 60];
	_box_1 addItemCargoGlobal ["ACE_HandFlare_Yellow", 60];
	_box_1 addItemCargoGlobal ["SmokeShellBlue", 100];
	_box_1 addItemCargoGlobal ["SmokeShellGreen", 100];
	_box_1 addItemCargoGlobal ["SmokeShellOrange", 100];
	_box_1 addItemCargoGlobal ["SmokeShellPurple", 100];
	_box_1 addItemCargoGlobal ["SmokeShellOrange", 100];
	_box_1 addItemCargoGlobal ["SmokeShellRed", 100];
	_box_1 addItemCargoGlobal ["SmokeShellYellow", 100];
	_box_1 addItemCargoGlobal ["LIB_US_M18", 100];
	
	_box_1 addItemCargoGlobal ["LIB_7Rnd_45ACP", 600];
	_box_1 addItemCargoGlobal ["LIB_8Rnd_762x63", 600];
	_box_1 addItemCargoGlobal ["LIB_8Rnd_762x63_t", 600];
	_box_1 addItemCargoGlobal ["LIB_30Rnd_45ACP", 600];
	_box_1 addItemCargoGlobal ["LIB_30Rnd_45ACP_t", 600];
	_box_1 addItemCargoGlobal ["LIB_50Rnd_762x63", 600];
	_box_1 addItemCargoGlobal ["LIB_1Rnd_flare_green", 600];
	_box_1 addItemCargoGlobal ["LIB_1Rnd_flare_red", 600];
	_box_1 addItemCargoGlobal ["LIB_1Rnd_flare_white", 600];
	_box_1 addItemCargoGlobal ["LIB_1Rnd_flare_yellow", 600];
	_box_1 addItemCargoGlobal ["LIB_1Rnd_60mm_M6", 600];
	_box_1 addItemCargoGlobal ["LIB_20Rnd_762x63", 600];
	_box_1 addItemCargoGlobal ["LIB_30Rnd_45ACP", 600];
	
	_box_1 addItemCargoGlobal ["LIB_US_TNT_4pound_mag", 5];
	_box_1 addItemCargoGlobal ["LIB_Ladung_Big_MINE_mag", 10];
	_box_1 addItemCargoGlobal ["LIB_Ladung_Small_MINE_mag", 20];
	
	_box_1 attachTo [_para_1, [0,0,0]];
	
	_null = [_box_1, _para_1] execVM "skrypty\zrzutLanding.sqf";
	
	sleep 10;
	
	_para_1 allowDamage true;
};
if(_dropCase == 1) then {
	sleep ([82, 85] call BIS_fnc_randomInt);
	_para_1 = createVehicle ["B_Parachute_02_F", [0,0,100], [], 0, ""];
	_para_1 allowDamage false;
	_para_1 setPosATL getPos _plane;
	_box_1 = "LIB_US_Willys_MB" createVehicle [0,0,100];
	
	_box_1 addItemCargoGlobal ["Vest_V_LIB_US_Vest_45", 2];
	_box_1 addItemCargoGlobal ["Vest_V_LIB_US_Vest_Bar", 2];
	_box_1 addItemCargoGlobal ["Vest_V_LIB_US_Vest_Thompson_nco", 2];
	_box_1 addItemCargoGlobal ["Vest_V_LIB_US_Vest_Thompson_nco_Radio", 2];
	_box_1 addItemCargoGlobal ["Vest_V_LIB_US_Vest_Thompson", 2];
	_box_1 addItemCargoGlobal ["Vest_V_LIB_US_Vest_Medic", 2];
	_box_1 addItemCargoGlobal ["Vest_V_LIB_US_Vest_Medic2", 2];
	_box_1 addItemCargoGlobal ["Vest_V_LIB_US_Vest_Asst_MG", 2];
	_box_1 addItemCargoGlobal ["Vest_V_LIB_US_Vest_Carbine", 2];
	_box_1 addItemCargoGlobal ["Vest_V_LIB_US_Vest_Carbine_eng", 2];
	_box_1 addItemCargoGlobal ["Vest_V_LIB_US_Vest_Garand", 2];
	_box_1 addItemCargoGlobal ["Vest_V_LIB_US_Vest_Grenadier", 2];
	_box_1 addItemCargoGlobal ["Vest_V_LIB_US_Vest_Carbine_nco", 2];
	_box_1 addItemCargoGlobal ["Vest_V_LIB_US_Vest_Carbine_nco_Radio", 2];
	_box_1 addItemCargoGlobal ["Vest_V_LIB_US_Vest_M1919", 2];
	_box_1 addBackpackCargoGlobal ["B_LIB_US_Backpack", 3];
	_box_1 addBackpackCargoGlobal ["B_LIB_US_Backpack_Bandoleer", 3];
	_box_1 addBackpackCargoGlobal ["B_LIB_US_Backpack_dday", 3];
	_box_1 addBackpackCargoGlobal ["B_LIB_US_Backpack_RocketBag_Empty", 3];
	_box_1 addBackpackCargoGlobal ["B_LIB_US_Backpack_Mk2", 3];
	_box_1 addItemCargoGlobal ["Weapon_LIB_M1_Carbine", 4];
	_box_1 addItemCargoGlobal ["Weapon_LIB_M1_Garand", 12];
	_box_1 addItemCargoGlobal ["Weapon_LIB_M1A1_Carbine", 4];
	_box_1 addItemCargoGlobal ["Weapon_LIB_M1919A6", 2];
	_box_1 addItemCargoGlobal ["Weapon_LIB_M1918A2_BAR", 2];
	_box_1 addItemCargoGlobal ["Weapon_LIB_M1A1_Thompson", 4];
	_box_1 addItemCargoGlobal ["Weapon_LIB_M3_GreaseGun", 4];
	_box_1 addItemCargoGlobal ["Weapon_LIB_FLARE_PISTOL", 12];
	_box_1 addItemCargoGlobal ["Weapon_LIB_Colt_M1911", 12];
	
	_box_1 addItemCargoGlobal ["ACE_fieldDressing", 100];
	_box_1 addItemCargoGlobal ["ACE_bloodIV", 10];
	_box_1 addItemCargoGlobal ["ACE_bloodIV_250", 40];
	_box_1 addItemCargoGlobal ["ACE_bloodIV_500", 20];
	_box_1 addItemCargoGlobal ["ACE_CableTie", 50];
	_box_1 addItemCargoGlobal ["ACE_bodyBag", 12];
	_box_1 addItemCargoGlobal ["ACE_morphine", 100];
	_box_1 addItemCargoGlobal ["ACE_packingBandage", 100];
	_box_1 addItemCargoGlobal ["ACE_plasmaIV", 10];
	_box_1 addItemCargoGlobal ["ACE_plasmaIV_250", 40];
	_box_1 addItemCargoGlobal ["ACE_plasmaIV_500", 20];
	_box_1 addItemCargoGlobal ["ACE_salineIV", 10];
	_box_1 addItemCargoGlobal ["ACE_salineIV_250", 40];
	_box_1 addItemCargoGlobal ["ACE_salineIV_500", 20];
	_box_1 addItemCargoGlobal ["ACE_tourniquet", 100];
	_box_1 addItemCargoGlobal ["ACE_surgicalKit", 2];
	
	_box_1 addItemCargoGlobal ["ACE_EntrenchingTool", 12];
	
	_box_1 addItemCargoGlobal ["LIB_US_Mk_2", 100];
	_box_1 addItemCargoGlobal ["ACE_HandFlare_Green", 60];
	_box_1 addItemCargoGlobal ["ACE_HandFlare_Red", 60];
	_box_1 addItemCargoGlobal ["ACE_HandFlare_White", 60];
	_box_1 addItemCargoGlobal ["ACE_HandFlare_Yellow", 60];
	_box_1 addItemCargoGlobal ["SmokeShellBlue", 100];
	_box_1 addItemCargoGlobal ["SmokeShellGreen", 100];
	_box_1 addItemCargoGlobal ["SmokeShellOrange", 100];
	_box_1 addItemCargoGlobal ["SmokeShellPurple", 100];
	_box_1 addItemCargoGlobal ["SmokeShellOrange", 100];
	_box_1 addItemCargoGlobal ["SmokeShellRed", 100];
	_box_1 addItemCargoGlobal ["SmokeShellYellow", 100];
	_box_1 addItemCargoGlobal ["LIB_US_M18", 100];
	
	_box_1 addItemCargoGlobal ["LIB_7Rnd_45ACP", 600];
	_box_1 addItemCargoGlobal ["LIB_8Rnd_762x63", 600];
	_box_1 addItemCargoGlobal ["LIB_8Rnd_762x63_t", 600];
	_box_1 addItemCargoGlobal ["LIB_30Rnd_45ACP", 600];
	_box_1 addItemCargoGlobal ["LIB_30Rnd_45ACP_t", 600];
	_box_1 addItemCargoGlobal ["LIB_50Rnd_762x63", 600];
	_box_1 addItemCargoGlobal ["LIB_1Rnd_flare_green", 600];
	_box_1 addItemCargoGlobal ["LIB_1Rnd_flare_red", 600];
	_box_1 addItemCargoGlobal ["LIB_1Rnd_flare_white", 600];
	_box_1 addItemCargoGlobal ["LIB_1Rnd_flare_yellow", 600];
	_box_1 addItemCargoGlobal ["LIB_1Rnd_60mm_M6", 600];
	_box_1 addItemCargoGlobal ["LIB_20Rnd_762x63", 600];
	_box_1 addItemCargoGlobal ["LIB_30Rnd_45ACP", 600];
	
	_box_1 addItemCargoGlobal ["LIB_US_TNT_4pound_mag", 5];
	_box_1 addItemCargoGlobal ["LIB_Ladung_Big_MINE_mag", 10];
	_box_1 addItemCargoGlobal ["LIB_Ladung_Small_MINE_mag", 20];
	
	_box_1 attachTo [_para_1, [0,0,0]];
	
	_null = [_box_1, _para_1] execVM "skrypty\zrzutLanding.sqf";
	
	sleep 10;
	
	_para_1 allowDamage true;
};
