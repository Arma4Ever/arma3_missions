if(!hasInterface) exitWith {};

_alien = _this select 0;
_dystans = _this select 1;

_opcja = selectRandom ["Alien","Monolith"];

if(player distance _alien < _dystans) then {

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