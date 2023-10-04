sleep 30;

a3cs_nametag_displayInterrupt = true;

playMusic "edelweiss";

titleCut ["", "BLACK OUT", 0];
sleep 10;

["<t style='text-align:center' font='PuristaSemiBold' color='#ffffff' size = '3'>Das Orakel vom Berge", 0, 0,8,1,0,4] spawn BIS_fnc_dynamicText;
sleep 10;

100012 cutRsc ["nukedLondon", "PLAIN"];
sleep 17;
	
["<t style='text-align:center' font='PuristaSemiBold' color='#ffffff' size = '3'>Edelweiss", 0, 0,8,1,0,4] spawn BIS_fnc_dynamicText;
sleep 10;

100012 cutRsc ["naziParis", "PLAIN"];
sleep 17;

["<t style='text-align:center' font='PuristaSemiBold' color='#ffffff' size = '2'>10 kwietnia 1947", 0, 0,8,1,0,4] spawn BIS_fnc_dynamicText;
sleep 10;

100012 cutRsc ["reichstag", "PLAIN"];
sleep 17;

["<t style='text-align:center' font='PuristaSemiBold' color='#ffffff' size = '2'>Malden, Texas", 0, 0,8,1,0,4] spawn BIS_fnc_dynamicText;
sleep 10;

100012 cutRsc ["reichstag2", "PLAIN"];
sleep 17;

_now = date;
_hour = str (_now select 3);
_minute = str (_now select 4);

["<t style='text-align:center' font='PuristaSemiBold' color='#ffffff' size = '2'>Godzina " + _hour + ":" + _minute + " nad ranem", 0, 0,8,1,0,4] spawn BIS_fnc_dynamicText;
sleep 10;

100012 cutRsc ["swastikaBerlin", "PLAIN"];
sleep 19;
   
	
titleCut ["", "BLACK IN", 5];
a3cs_nametag_displayInterrupt = false;
"dynamicBlur" ppEffectEnable true;   
"dynamicBlur" ppEffectAdjust [6];   
"dynamicBlur" ppEffectCommit 0;     
"dynamicBlur" ppEffectAdjust [0.0];  
"dynamicBlur" ppEffectCommit 5;
    
	