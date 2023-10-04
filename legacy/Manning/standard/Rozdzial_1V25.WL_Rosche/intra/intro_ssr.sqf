if(player distance gl_intro_ssr < 1000) then {

playMusic "LeadTrack02_F_Bootcamp";

sleep 45;



["<t style='text-align:center' font='PuristaSemiBold' color='#ffffff' size = '3'>Manning Prezentuje", 0, 0,20,1,0,4] spawn BIS_fnc_dynamicText;
sleep 25;
	
["<t style='text-align:center' font='PuristaSemiBold' color='#ffffff' size = '3'>Misje fabularna 1 Wrzesnia", 0, 0,8,1,0,4] spawn BIS_fnc_dynamicText;
sleep 25;

["<t style='text-align:center' font='PuristaSemiBold' color='#ffffff' size = '2'>Wolna adaptacje, rozdzial 1", 0, 0,20,1,0,4] spawn BIS_fnc_dynamicText;
sleep 25;


["<t style='text-align:center' font='PuristaSemiBold' color='#ffffff' size = '2'>O tytule: INTERWENCJA", 0, 0,20,1,0,4] spawn BIS_fnc_dynamicText;


} else {};;