a3cs_nametag_displayInterrupt = true;

	titleCut ["", "BLACK OUT", 0];
    sleep 20;
    titleText ["Arma 3 Coop","PLAIN"];
    titleFadeOut 5;
    sleep 5;
 
    titleText ["Operacja Boomerang","PLAIN"];
    titleFadeOut 5;
    sleep 5;
 
    titleText ["2 Pluton Rozpoznania USMC\n\n Irak 2005","PLAIN"];
    titleFadeOut 10;
    sleep 10;
  
	titleCut ["", "BLACK IN", 5];
    a3cs_nametag_displayInterrupt = false;
	"dynamicBlur" ppEffectEnable true;   
	"dynamicBlur" ppEffectAdjust [6];   
	"dynamicBlur" ppEffectCommit 0;     
	"dynamicBlur" ppEffectAdjust [0.0];  
	"dynamicBlur" ppEffectCommit 5; 
	if(isDedicated) then {
	introBool = false;
	publicVariable "introBool";} else {}