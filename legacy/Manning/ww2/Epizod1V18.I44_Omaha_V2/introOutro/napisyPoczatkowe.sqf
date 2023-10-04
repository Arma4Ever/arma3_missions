a3cs_nametag_displayInterrupt = true;

playMusic "introPatton";

	titleCut ["", "BLACK OUT", 0];
    sleep 35;
    titleText ["Manning prezentuje","PLAIN"];
    titleFadeOut 12;
    sleep 14;
 
    titleText ["Kampania 'Mama, we're all gonna die...'\n \nEpizod 1: Get Off That Beach!","PLAIN"];
    titleFadeOut 14;
    sleep 16;
 
    titleText ["Plaza OMAHA.\n\nNormandia, Francja.\n\nD-Day","PLAIN"];
    titleFadeOut 16;
    sleep 18;
   
    titleText ["0644 HRS","PLAIN"];
	titleFadeOut 14;
    sleep 16;
	
	titleCut ["", "BLACK IN", 5];
    a3cs_nametag_displayInterrupt = false;
	"dynamicBlur" ppEffectEnable true;   
	"dynamicBlur" ppEffectAdjust [6];   
	"dynamicBlur" ppEffectCommit 0;     
	"dynamicBlur" ppEffectAdjust [0.0];  
	"dynamicBlur" ppEffectCommit 5;
	
if(isServer) then {
	introBool = false;
	publicVariable "introBool";} else {}