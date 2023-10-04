a3cs_nametag_displayInterrupt = true;
titleText ["","BLACK",0.01];


titleText ["","BLACK",0.01];
sleep 10;
waitUntil {!isNull player && player == player};

sleep 8;

2 cutRsc ["RscLogoB","BLACK",0.01];
titleText ["","BLACK IN",2];
sleep 3;
titleText ["","BLACK OUT",2];
sleep 3;
2 cutRsc ["RscLogoA","BLACK",0.01];
titleText ["","BLACK IN",2];
sleep 3;
titleText ["","BLACK OUT",2];
sleep 3;
2 cutFadeOut 0;
titleText ["","BLACK IN",2];
[["Mazurek Dabrowskiego",2,3,7],["Wschodnia Polska",2,3,7],["21 Sierpnia 1981",2,3,7]] spawn BIS_fnc_EXP_camp_SITREP;
  
	titleCut ["", "BLACK IN", 8];
    a3cs_nametag_displayInterrupt = false;
	"dynamicBlur" ppEffectEnable true;   
	"dynamicBlur" ppEffectAdjust [6];   
	"dynamicBlur" ppEffectCommit 0;     
	"dynamicBlur" ppEffectAdjust [0.0];  
	"dynamicBlur" ppEffectCommit 5; 
	if(isDedicated) then {
	introBool = false;
	publicVariable "introBool";} else {};

