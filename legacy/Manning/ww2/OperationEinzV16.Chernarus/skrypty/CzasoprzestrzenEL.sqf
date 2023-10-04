if (!hasInterface) exitwith {};

_object = _this select 0;

sleep 15;

_zalamanie = "#particlesource" createVehicleLocal getPosATL _object;
_zalamanie setParticleCircle [0,[0,0,0]];
_zalamanie setParticleParams [["\A3\data_f\VolumeLight", 1, 0, 1], "", "SpaceObject", 1,2,[0,0,0],[0,0,0],0,9.996,7.84,0,[20,30,20],[[0,0,0,0],[1,1,0.25,1],[0.5,1,0.5,0]],[0.08],1,0,"","",_object];
_zalamanie setParticleRandom [1,[50,5,5],[0,0,0],0.01,1,[0,0,0,0.1],1,0];
_zalamanie setDropInterval 0.005;

sleep 130;

_opcja = selectRandom ["Alien","Monolith"];
deleteVehicle _zalamanie;

if(player distance monolith < 1000) then {
	[player, true, 9999, false] call ace_medical_fnc_setUnconscious;
	
	a3cs_nametag_displayInterrupt = true;
	
	titleCut ["", "BLACK OUT", 0];
	if(_opcja == "Monolith") then {
		playMusic "chorus";
		sleep 5;
		100012 cutRsc ["monolithDarkAge", "PLAIN"];
		sleep 7;
		100012 cutRsc ["monolithSea", "PLAIN"];
		sleep 7;
		100012 cutRsc ["monolithSun", "PLAIN"];
		sleep 7;
		100012 cutRsc ["monolithDarkAge", "PLAIN"];
		sleep 6;
		100012 cutRsc ["monolithSea", "PLAIN"];
		sleep 6;
		100012 cutRsc ["monolithSun", "PLAIN"];
		sleep 6;
		100012 cutRsc ["monolithDarkAge", "PLAIN"];
		sleep 5;
		100012 cutRsc ["monolithSea", "PLAIN"];
		sleep 5;
		100012 cutRsc ["monolithSun", "PLAIN"];
		sleep 5;
		100012 cutRsc ["monolithDarkAge", "PLAIN"];
		sleep 4;
		100012 cutRsc ["monolithSea", "PLAIN"];
		sleep 4;
		100012 cutRsc ["monolithSun", "PLAIN"];
		sleep 4;
		100012 cutRsc ["monolithDarkAge", "PLAIN"];
		sleep 3;
		100012 cutRsc ["monolithSea", "PLAIN"];
		sleep 3;
		100012 cutRsc ["monolithSun", "PLAIN"];
		sleep 3;
		100012 cutRsc ["monolithDarkAge", "PLAIN"];
		sleep 2;
		100012 cutRsc ["monolithSea", "PLAIN"];
		sleep 2;
		100012 cutRsc ["monolithSun", "PLAIN"];
		sleep 2;
		100012 cutRsc ["monolithDarkAge", "PLAIN"];
		sleep 1;
		100012 cutRsc ["monolithSea", "PLAIN"];
		sleep 1;
		100012 cutRsc ["monolithSun", "PLAIN"];
		sleep 1;
		100012 cutRsc ["earth_1", "PLAIN"];
		sleep 10;
		};
		
	if(_opcja == "Alien") then {
		playMusic "whispers";
		sleep 5;
		100012 cutRsc ["alien_1", "PLAIN"];
		sleep 6;
		100012 cutRsc ["alien_2", "PLAIN"];
		sleep 6;
		100012 cutRsc ["alien_3", "PLAIN"];
		sleep 6;
		100012 cutRsc ["alien_4", "PLAIN"];
		sleep 6;
		100012 cutRsc ["alien_1", "PLAIN"];
		sleep 5;
		100012 cutRsc ["alien_2", "PLAIN"];
		sleep 5;
		100012 cutRsc ["alien_3", "PLAIN"];
		sleep 5;
		100012 cutRsc ["alien_4", "PLAIN"];
		sleep 5;
		100012 cutRsc ["alien_1", "PLAIN"];
		sleep 4;
		100012 cutRsc ["alien_2", "PLAIN"];
		sleep 4;
		100012 cutRsc ["alien_3", "PLAIN"];
		sleep 4;
		100012 cutRsc ["alien_4", "PLAIN"];
		sleep 4;
		100012 cutRsc ["alien_1", "PLAIN"];
		sleep 3;
		100012 cutRsc ["alien_2", "PLAIN"];
		sleep 3;
		100012 cutRsc ["alien_3", "PLAIN"];
		sleep 3;
		100012 cutRsc ["alien_4", "PLAIN"];
		sleep 3;
		100012 cutRsc ["alien_1", "PLAIN"];
		sleep 2;
		100012 cutRsc ["alien_2", "PLAIN"];
		sleep 2;
		100012 cutRsc ["alien_3", "PLAIN"];
		sleep 2;
		100012 cutRsc ["alien_4", "PLAIN"];
		sleep 2;
		100012 cutRsc ["alien_1", "PLAIN"];
		sleep 1;
		100012 cutRsc ["alien_2", "PLAIN"];
		sleep 1;
		100012 cutRsc ["alien_3", "PLAIN"];
		sleep 1;
		100012 cutRsc ["alien_4", "PLAIN"];
		sleep 1;
		100012 cutRsc ["bloodChutes", "PLAIN"];
		sleep 10;
		};
		
	titleCut ["", "BLACK IN", 5];
	a3cs_nametag_displayInterrupt = false;
	"dynamicBlur" ppEffectEnable true;   
	"dynamicBlur" ppEffectAdjust [6];   
	"dynamicBlur" ppEffectCommit 0;     
	"dynamicBlur" ppEffectAdjust [0.0];  
	"dynamicBlur" ppEffectCommit 5;
    
	[player, false, 0, false] call ace_medical_fnc_setUnconscious;
	
} else {};


