//Czarny ekran na pocz¹tku misji, zanikaj¹ce napisy po prawej
a3cs_nametag_displayInterrupt = true;
titleText ["","BLACK",0.01];


titleText ["","BLACK",0.01];
sleep 20;


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
[["Operation Waterfall",2,3,7],["Southern Afghanistan",2,3,7],["June 2013",2,3,7]] spawn BIS_fnc_EXP_camp_SITREP;
  
	titleCut ["", "BLACK IN", 8];
    a3cs_nametag_displayInterrupt = false;
	"dynamicBlur" ppEffectEnable true;   
	"dynamicBlur" ppEffectAdjust [6];   
	"dynamicBlur" ppEffectCommit 0;     
	"dynamicBlur" ppEffectAdjust [0.0];  
	"dynamicBlur" ppEffectCommit 5; 
	if(isDedicated) then {
	introBool = true;
	publicVariable "introBool";} else {};

