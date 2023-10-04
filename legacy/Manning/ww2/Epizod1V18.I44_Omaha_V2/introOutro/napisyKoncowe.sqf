a3cs_nametag_displayInterrupt = true;

playMusic "taps";

	titleCut ["", "BLACK OUT", 0];
    sleep 5;
    titleText ["Na plazy OMAHA poleglo miedzy 6 a 11 tysiecy zolnierzy.","PLAIN"];
    titleFadeOut 12;
    sleep 14;
 
    titleText ["Okolo 2000 Amerykanskich i miedzy 4000 a 9000 Niemieckich.","PLAIN"];
    titleFadeOut 14;
    sleep 16;
 
    titleText ["Desant na plazy i heroiczna walka Aliantow\n\nzmienily losy ludzkosci.","PLAIN"];
    titleFadeOut 16;
    sleep 18;
	
	if(zakonczMisje) then {"end1" call BIS_fnc_endMission;};
	
	titleCut ["", "BLACK IN", 5];
    a3cs_nametag_displayInterrupt = false;