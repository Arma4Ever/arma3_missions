if(player distance gl_intro_specjals < 250) then {
playMusic "LeadTrack02_F_EPA";

["<t style='text-align:center' font='PuristaSemiBold' color='#ffffff' size = '3'>Manning Prezentuje", 0, 0,20,1,0,4] spawn BIS_fnc_dynamicText;
sleep 25;
	
["<t style='text-align:center' font='PuristaSemiBold' color='#ffffff' size = '3'>Misje fabularna 1 Wrzesnia", 0, 0,20,1,0,4] spawn BIS_fnc_dynamicText;
sleep 25;

["<t style='text-align:center' font='PuristaSemiBold' color='#ffffff' size = '2'>Rozdzial 1", 0, 0,20,1,0,4] spawn BIS_fnc_dynamicText;
sleep 25;

["<t style='text-align:center' font='PuristaSemiBold' color='#ffffff' size = '2'>O tytule: Kein Polnisch", 0, 0,20,1,0,4] spawn BIS_fnc_dynamicText;


} else {};;