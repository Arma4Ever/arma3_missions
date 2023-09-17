#include "script_component.hpp"
/*
 * XEH_postInit.sqf
 * Poniższy kod wykona się po starcie misji, gdy wykonają się już pozostałe inity.
 * Dokumentacja: https://community.bistudio.com/wiki/Arma_3:_Functions_Library#Pre_and_Post_Init
 */
 
if (hasInterface) then {
  // Briefing
  #include "briefing.hpp"
 
  // Intro
  ["CBA_loadingScreenDone", {
    if (didJIP) exitWith {};
    0 spawn FUNC(intro);
  }] call CBA_fnc_addEventHandler;
};
 
// Kod wykonywany lokalnie u gracza, za każdym razem gdy dołączy do gry
if (hasInterface) then {
 
 
"colorCorrections" ppEffectEnable true; 
"colorCorrections" ppEffectAdjust [0.9, 1, 0, [0.1, 0.1, 0.1, -0.1], [1, 1, 0.8, 0.528],  [1, 0.2, 0, 0]]; 
"colorCorrections" ppEffectCommit 0; 
 
 
};
 
// Kod wykonywany wyłącznie na serwerze - wykonuje się tylko raz, na starcie misji
if (isServer) then {
 
0 setOvercast 1;
0 setRain 1;
0 setFog 0.2;
setHumidity 0.95;
enableEnvironment [false, true];
forceWeatherChange;
[
	"a3\data_f\snowflake4_ca.paa", // rainDropTexture
	4, // texDropCount
	0.5, // minRainDensity
	25, // effectRadius
	0.05, // windCoef
	2.5, // dropSpeed
	0.5, // rndSpeed
	0.5, // rndDir
	0.07, // dropWidth
	0.07, // dropHeight
	[1, 1, 1, 0.5], // dropColor
	0.0, // lumSunFront
	0.2, // lumSunBack
	0.5, // refractCoef
	0.5, // refractSaturation
	true, // snow
	false // dropColorStrong
]
call BIS_fnc_setRain;
 
};