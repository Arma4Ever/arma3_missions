_paratrooper = _this select 0;
_typLoadout = _this select 1;
_rtoBox = _this select 2;

removeBackpack _paratrooper; 

_paratrooper switchMove "AinvPercMstpSnonWnonDnon_G01";

_paratrooper = _this select 0;

_paratrooper say3d ["cricket", 150, 1]] say3d

[[5, 5, 10]] remoteExec ["addCamShake", _paratrooper, false];

sleep 1;

if(isDedicated) then {
if(_typLoadout == "Medyk") then 
	{
		_poz = getPos _paratrooper;
		_x = _poz select 0;
		_y = _poz select 1;
		_z = _poz select 2;
		_newBkpk = selectRandom ["B_LIB_US_M36","B_LIB_US_M36_Bandoleer","B_LIB_US_M36_Rope"];
		_bkpk = "B_LIB_US_Type5" createVehicle [_x + 1, _y + 1, _z + 2];
		_bkpk addBackpackCargoGlobal [_newBkpk, 1];
		_bkpk addItemCargoGlobal ["ACE_fieldDressing", 50];
		_bkpk addItemCargoGlobal ["ACE_elasticBandage" , 50];
		_bkpk addItemCargoGlobal ["ACE_morphine", 25];
		_bkpk addItemCargoGlobal ["ACE_packingBandage",50];
		_bkpk addItemCargoGlobal ["ACE_tourniquet",48];
		_bkpk addItemCargoGlobal ["LIB_US_Mk_2",5];
		_bkpk addItemCargoGlobal ["ACE_HandFlare_Green",5];
		_bkpk addItemCargoGlobal ["ACE_HandFlare_Red",5];
		_bkpk addItemCargoGlobal ["ACE_HandFlare_White",5];
		_bkpk addItemCargoGlobal ["ACE_salineIV_250",4];
		_bkpk addItemCargoGlobal ["ACE_bloodIV_250",5];
		_bkpk addItemCargoGlobal ["ACE_surgicalKit",1];
		_bkpk addItemCargoGlobal ["ACE_EntrenchingTool",1];
		_bkpk addItemCargoGlobal ["LIB_8Rnd_762x63",25];
		_bkpk addItemCargoGlobal ["LIB_8Rnd_762x63_t",25];
		_bkpk addItemCargoGlobal ["LIB_1Rnd_flare_white",10];
		_bkpk addItemCargoGlobal ["LIB_1Rnd_flare_red",10];
		_bkpk addItemCargoGlobal ["LIB_1Rnd_flare_green",10];
		
	};

if(_typLoadout == "Rifleman") then {
	
		_poz = getPos _paratrooper;
		_x = _poz select 0;
		_y = _poz select 1;
		_z = _poz select 2;
		_newBkpk = selectRandom ["B_LIB_US_M36","B_LIB_US_M36_Bandoleer","B_LIB_US_M36_Rope"];
		_bkpk = "B_LIB_US_Type5" createVehicle [_x + 1, _y + 1, _z + 2];
		_bkpk addBackpackCargoGlobal [_newBkpk, 1];
		_bkpk addItemCargoGlobal ["ACE_fieldDressing", 10];
		_bkpk addItemCargoGlobal ["ACE_elasticBandage" , 10];
		_bkpk addItemCargoGlobal ["ACE_morphine", 5];
		_bkpk addItemCargoGlobal ["ACE_packingBandage",10];
		_bkpk addItemCargoGlobal ["ACE_tourniquet",4];
		_bkpk addItemCargoGlobal ["LIB_US_Mk_2",5];
		_bkpk addItemCargoGlobal ["ACE_HandFlare_Green",5];
		_bkpk addItemCargoGlobal ["ACE_HandFlare_Red",5];
		_bkpk addItemCargoGlobal ["ACE_HandFlare_White",5];
		_bkpk addItemCargoGlobal ["ACE_EntrenchingTool",1];
		_bkpk addItemCargoGlobal ["LIB_8Rnd_762x63",25];
		_bkpk addItemCargoGlobal ["LIB_8Rnd_762x63_t",25];
		_bkpk addItemCargoGlobal ["LIB_1Rnd_flare_white",10];		
		_bkpk addItemCargoGlobal ["LIB_1Rnd_flare_red",10];
		_bkpk addItemCargoGlobal ["LIB_1Rnd_flare_green",10];
		
};
    
if(_typLoadout == "RTO") then { 
	
		_poz = getPos _paratrooper;
		_x = _poz select 0;
		_y = _poz select 1;
		_z = _poz select 2;
		_bkpk = "B_LIB_US_Type5" createVehicle [_x + 1, _y + 1, _z + 2];
		_moveBox = rto_box_1 setPos [x+2, y+2, z];
		_bkpk addItemCargoGlobal ["ACE_fieldDressing", 10];
		_bkpk addItemCargoGlobal ["ACE_elasticBandage" , 10];
		_bkpk addItemCargoGlobal ["ACE_morphine", 5];
		_bkpk addItemCargoGlobal ["ACE_packingBandage",10];
		_bkpk addItemCargoGlobal ["ACE_tourniquet",4];
		_bkpk addItemCargoGlobal ["LIB_US_Mk_2",5];
		_bkpk addItemCargoGlobal ["ACE_HandFlare_Green",5];
		_bkpk addItemCargoGlobal ["ACE_HandFlare_Red",5];
		_bkpk addItemCargoGlobal ["ACE_HandFlare_White",5];
		_bkpk addItemCargoGlobal ["ACE_EntrenchingTool",1];
		_bkpk addItemCargoGlobal ["LIB_8Rnd_762x63",25];
		_bkpk addItemCargoGlobal ["LIB_8Rnd_762x63_t",25];
		_bkpk addItemCargoGlobal ["LIB_1Rnd_flare_white",10];
		_bkpk addItemCargoGlobal ["LIB_1Rnd_flare_red",10];
		_bkpk addItemCargoGlobal ["LIB_1Rnd_flare_green",10];
};

if(_typLoadout == "BAR") then {
	
		_poz = getPos _paratrooper;
		_x = _poz select 0;
		_y = _poz select 1;
		_z = _poz select 2;
		_newBkpk = selectRandom ["B_LIB_US_M36","B_LIB_US_M36_Bandoleer","B_LIB_US_M36_Rope"];
		_bkpk = "B_LIB_US_Type5" createVehicle [_x + 1, _y + 1, _z + 2];
		_bkpk addBackpackCargoGlobal [_newBkpk, 1];
		_bkpk addItemCargoGlobal ["ACE_fieldDressing", 10];
		_bkpk addItemCargoGlobal ["ACE_elasticBandage" , 10];
		_bkpk addItemCargoGlobal ["ACE_morphine", 5];
		_bkpk addItemCargoGlobal ["ACE_packingBandage",10];
		_bkpk addItemCargoGlobal ["ACE_tourniquet",4];
		_bkpk addItemCargoGlobal ["LIB_US_Mk_2",5];
		_bkpk addItemCargoGlobal ["ACE_HandFlare_Green",5];
		_bkpk addItemCargoGlobal ["ACE_HandFlare_Red",5];
		_bkpk addItemCargoGlobal ["ACE_HandFlare_White",5];
		_bkpk addItemCargoGlobal ["ACE_EntrenchingTool",1];
		_bkpk addItemCargoGlobal ["LIB_20Rnd_762x63",20];	
		_bkpk addItemCargoGlobal ["LIB_1Rnd_flare_white",10];
		_bkpk addItemCargoGlobal ["LIB_1Rnd_flare_red",10];
		_bkpk addItemCargoGlobal ["LIB_1Rnd_flare_green",10];
		
	};
	
if(_typLoadout == "AmmoBAR") then {
	
		_poz = getPos _paratrooper;
		_x = _poz select 0;
		_y = _poz select 1;
		_z = _poz select 2;
		_newBkpk = selectRandom ["B_LIB_US_M36","B_LIB_US_M36_Bandoleer","B_LIB_US_M36_Rope"];
		_bkpk = "B_LIB_US_Type5" createVehicle [_x + 1, _y + 1, _z + 2];
		_bkpk addBackpackCargoGlobal [_newBkpk, 1];
		_bkpk addItemCargoGlobal ["ACE_fieldDressing", 10];
		_bkpk addItemCargoGlobal ["ACE_elasticBandage" , 10];
		_bkpk addItemCargoGlobal ["ACE_morphine", 5];
		_bkpk addItemCargoGlobal ["ACE_packingBandage",10];
		_bkpk addItemCargoGlobal ["ACE_tourniquet",4];
		_bkpk addItemCargoGlobal ["LIB_US_Mk_2",5];
		_bkpk addItemCargoGlobal ["ACE_HandFlare_Green",5];
		_bkpk addItemCargoGlobal ["ACE_HandFlare_Red",5];
		_bkpk addItemCargoGlobal ["ACE_HandFlare_White",5];
		_bkpk addItemCargoGlobal ["ACE_EntrenchingTool",1];
		_bkpk addItemCargoGlobal ["LIB_8Rnd_762x63",25];
		_bkpk addItemCargoGlobal ["LIB_8Rnd_762x63_t",25];
		_bkpk addItemCargoGlobal ["LIB_20Rnd_762x63",20];
		_bkpk addItemCargoGlobal ["LIB_1Rnd_flare_white",10];
		_bkpk addItemCargoGlobal ["LIB_1Rnd_flare_red",10];
		_bkpk addItemCargoGlobal ["LIB_1Rnd_flare_green",10];
		_bkpk addItemCargoGlobal ["Binocular",1];
		
	};
	
if(_typLoadout == "Browning") then {
	
		_poz = getPos _paratrooper;
		_x = _poz select 0;
		_y = _poz select 1;
		_z = _poz select 2;
		_newBkpk = selectRandom ["B_LIB_US_M36","B_LIB_US_M36_Bandoleer","B_LIB_US_M36_Rope"];
		_bkpk = "B_LIB_US_Type5" createVehicle [_x + 1, _y + 1, _z + 2];
		_bkpk addBackpackCargoGlobal [_newBkpk, 1];
		_bkpk addItemCargoGlobal ["ACE_fieldDressing", 10];
		_bkpk addItemCargoGlobal ["ACE_elasticBandage" , 10];
		_bkpk addItemCargoGlobal ["ACE_morphine", 5];
		_bkpk addItemCargoGlobal ["ACE_packingBandage",10];
		_bkpk addItemCargoGlobal ["ACE_tourniquet",4];
		_bkpk addItemCargoGlobal ["LIB_US_Mk_2",5];
		_bkpk addItemCargoGlobal ["ACE_HandFlare_Green",5];
		_bkpk addItemCargoGlobal ["ACE_HandFlare_Red",5];
		_bkpk addItemCargoGlobal ["ACE_HandFlare_White",5];
		_bkpk addItemCargoGlobal ["ACE_EntrenchingTool",1];
		_bkpk addItemCargoGlobal ["LIB_50Rnd_762x63",10];
		_bkpk addItemCargoGlobal ["LIB_1Rnd_flare_white",10];
		_bkpk addItemCargoGlobal ["LIB_1Rnd_flare_red",10];
		_bkpk addItemCargoGlobal ["LIB_1Rnd_flare_green",10];
	};
	
if(_typLoadout == "AmmoBrowning") then {
	
		_poz = getPos _paratrooper;
		_x = _poz select 0;
		_y = _poz select 1;
		_z = _poz select 2;
		_newBkpk = selectRandom ["B_LIB_US_M36","B_LIB_US_M36_Bandoleer","B_LIB_US_M36_Rope"];
		_bkpk = "B_LIB_US_Type5" createVehicle [_x + 1, _y + 1, _z + 2];
		_bkpk addBackpackCargoGlobal [_newBkpk, 1];
		_bkpk addItemCargoGlobal ["ACE_fieldDressing", 10];
		_bkpk addItemCargoGlobal ["ACE_elasticBandage" , 10];
		_bkpk addItemCargoGlobal ["ACE_morphine", 5];
		_bkpk addItemCargoGlobal ["ACE_packingBandage",10];
		_bkpk addItemCargoGlobal ["ACE_tourniquet",4];
		_bkpk addItemCargoGlobal ["LIB_US_Mk_2",5];
		_bkpk addItemCargoGlobal ["ACE_HandFlare_Green",5];
		_bkpk addItemCargoGlobal ["ACE_HandFlare_Red",5];
		_bkpk addItemCargoGlobal ["ACE_HandFlare_White",5];
		_bkpk addItemCargoGlobal ["ACE_EntrenchingTool",1];
		_bkpk addItemCargoGlobal ["LIB_8Rnd_762x63",25];
		_bkpk addItemCargoGlobal ["LIB_8Rnd_762x63_t",25];
		_bkpk addItemCargoGlobal ["LIB_50Rnd_762x63",10];
		_bkpk addItemCargoGlobal ["LIB_1Rnd_flare_white",10];
		_bkpk addItemCargoGlobal ["LIB_1Rnd_flare_red",10];
		_bkpk addItemCargoGlobal ["LIB_1Rnd_flare_green",10];
		_bkpk addItemCargoGlobal ["Binocular",1];
	};
	
if(_typLoadout == "NCO") then {
	
		_poz = getPos _paratrooper;
		_x = _poz select 0;
		_y = _poz select 1;
		_z = _poz select 2;
		_newBkpk = selectRandom ["B_LIB_US_M36","B_LIB_US_M36_Bandoleer","B_LIB_US_M36_Rope"];
		_bkpk = "B_LIB_US_Type5" createVehicle [_x + 1, _y + 1, _z + 2];
		_bkpk addBackpackCargoGlobal [_newBkpk, 1];
		_bkpk addItemCargoGlobal ["ACE_fieldDressing", 10];
		_bkpk addItemCargoGlobal ["ACE_elasticBandage" , 10];
		_bkpk addItemCargoGlobal ["ACE_morphine", 5];
		_bkpk addItemCargoGlobal ["ACE_packingBandage",10];
		_bkpk addItemCargoGlobal ["ACE_tourniquet",4];
		_bkpk addItemCargoGlobal ["LIB_US_Mk_2",5];
		_bkpk addItemCargoGlobal ["ACE_HandFlare_Green",5];
		_bkpk addItemCargoGlobal ["ACE_HandFlare_Red",5];
		_bkpk addItemCargoGlobal ["ACE_HandFlare_White",5];
		_bkpk addItemCargoGlobal ["ACE_EntrenchingTool",1];
		_bkpk addItemCargoGlobal ["LIB_30Rnd_45ACP",10];
		_bkpk addItemCargoGlobal ["LIB_30Rnd_45ACP_t",10];
		_bkpk addItemCargoGlobal ["LIB_1Rnd_flare_white",10];		
		_bkpk addItemCargoGlobal ["LIB_1Rnd_flare_red",10];
		_bkpk addItemCargoGlobal ["LIB_1Rnd_flare_green",10];
		_bkpk addItemCargoGlobal ["Binocular",1];
		
	};
	
if(_typLoadout == "CO") then {
	
		_poz = getPos _paratrooper;
		_x = _poz select 0;
		_y = _poz select 1;
		_z = _poz select 2;
		_newBkpk = selectRandom ["B_LIB_US_M36","B_LIB_US_M36_Bandoleer","B_LIB_US_M36_Rope"];
		_bkpk = "B_LIB_US_Type5" createVehicle [_x + 1, _y + 1, _z + 2];
		_bkpk addBackpackCargoGlobal [_newBkpk, 1];
		_bkpk addItemCargoGlobal ["ACE_fieldDressing", 10];
		_bkpk addItemCargoGlobal ["ACE_elasticBandage" , 10];
		_bkpk addItemCargoGlobal ["ACE_morphine", 5];
		_bkpk addItemCargoGlobal ["ACE_packingBandage",10];
		_bkpk addItemCargoGlobal ["ACE_tourniquet",4];
		_bkpk addItemCargoGlobal ["LIB_US_Mk_2",5];
		_bkpk addItemCargoGlobal ["ACE_HandFlare_Green",5];
		_bkpk addItemCargoGlobal ["ACE_HandFlare_Red",5];
		_bkpk addItemCargoGlobal ["ACE_HandFlare_White",5];
		_bkpk addItemCargoGlobal ["ACE_EntrenchingTool",1];
		_bkpk addItemCargoGlobal ["LIB_15Rnd_762x33",20];
		_bkpk addItemCargoGlobal ["LIB_15Rnd_762x33_t",20];
		_bkpk addItemCargoGlobal ["LIB_1Rnd_flare_white",10];		
		_bkpk addItemCargoGlobal ["LIB_1Rnd_flare_red",10];
		_bkpk addItemCargoGlobal ["LIB_1Rnd_flare_green",10];
		_bkpk addItemCargoGlobal ["Binocular",1];
		
	};
	
if(_typLoadout == "AT") then {
	
		_poz = getPos _paratrooper;
		_x = _poz select 0;
		_y = _poz select 1;
		_z = _poz select 2;
		_bkpk = "B_LIB_US_Type5" createVehicle [_x + 1, _y + 1, _z + 2];
		_bkpk addBackpackCargoGlobal ["B_LIB_US_M36_Rocketbag_Empty", 1];
		_bkpk addItemCargoGlobal ["ACE_fieldDressing", 10];
		_bkpk addItemCargoGlobal ["ACE_elasticBandage" , 10];
		_bkpk addItemCargoGlobal ["ACE_morphine", 5];
		_bkpk addItemCargoGlobal ["ACE_packingBandage",10];
		_bkpk addItemCargoGlobal ["ACE_tourniquet",4];
		_bkpk addItemCargoGlobal ["LIB_US_Mk_2",5];
		_bkpk addItemCargoGlobal ["ACE_HandFlare_Green",5];
		_bkpk addItemCargoGlobal ["ACE_HandFlare_Red",5];
		_bkpk addItemCargoGlobal ["ACE_HandFlare_White",5];
		_bkpk addItemCargoGlobal ["ACE_EntrenchingTool",1];
		_bkpk addItemCargoGlobal ["LIB_8Rnd_762x63",25];
		_bkpk addItemCargoGlobal ["LIB_8Rnd_762x63_t",25];
		_bkpk addItemCargoGlobal ["LIB_1Rnd_60mm_M6", 3];
		_bkpk addItemCargoGlobal ["LIB_1Rnd_flare_white",10];		
		_bkpk addItemCargoGlobal ["LIB_1Rnd_flare_red",10];
		_bkpk addItemCargoGlobal ["LIB_1Rnd_flare_green",10];
		
	};
	
if(_typLoadout == "AmmoAT") then {
	
		_poz = getPos _paratrooper;
		_x = _poz select 0;
		_y = _poz select 1;
		_z = _poz select 2;
		_bkpk = "B_LIB_US_Type5" createVehicle [_x + 1, _y + 1, _z + 2];
		_bkpk addBackpackCargoGlobal ["B_LIB_US_M36_Rocketbag_Empty", 1];
		_bkpk addItemCargoGlobal ["ACE_fieldDressing", 10];
		_bkpk addItemCargoGlobal ["ACE_elasticBandage" , 10];
		_bkpk addItemCargoGlobal ["ACE_morphine", 5];
		_bkpk addItemCargoGlobal ["ACE_packingBandage",10];
		_bkpk addItemCargoGlobal ["ACE_tourniquet",4];
		_bkpk addItemCargoGlobal ["LIB_US_Mk_2",5];
		_bkpk addItemCargoGlobal ["ACE_HandFlare_Green",5];
		_bkpk addItemCargoGlobal ["ACE_HandFlare_Red",5];
		_bkpk addItemCargoGlobal ["ACE_HandFlare_White",5];
		_bkpk addItemCargoGlobal ["ACE_EntrenchingTool",1];
		_bkpk addItemCargoGlobal ["LIB_8Rnd_762x63",25];
		_bkpk addItemCargoGlobal ["LIB_8Rnd_762x63_t",25];
		_bkpk addItemCargoGlobal ["LIB_1Rnd_60mm_M6", 3];
		_bkpk addItemCargoGlobal ["LIB_1Rnd_flare_white",10];		
		_bkpk addItemCargoGlobal ["LIB_1Rnd_flare_red",10];
		_bkpk addItemCargoGlobal ["LIB_1Rnd_flare_green",10];
	
	};
};
	
_paratrooper removeAction 0;
