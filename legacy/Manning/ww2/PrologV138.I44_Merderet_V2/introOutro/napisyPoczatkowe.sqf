a3cs_nametag_displayInterrupt = true;

playMusic "introSCEisenhower";
   
    sleep 32;
    titleText ["Manning prezentuje","PLAIN"];
    titleFadeOut 12;
    sleep 14;
 
    titleText ["Kampania 'Mama, we're all gonna die...'\n \nProlog: A Helluva Way to Die!","PLAIN"];
    titleFadeOut 14;
    sleep 16;
 
    titleText ["Okolice Chef-du-Pont.\n\nNormandia, Francja.\n\nD-Day","PLAIN"];
    titleFadeOut 16;
    sleep 18;
   
    titleText ["0122 HRS","PLAIN"];
    sleep 14;
   
    a3cs_nametag_displayInterrupt = false;
	
	if(isDedicated) then {
	introBool = false;
	publicVariable "introBool";} else {}