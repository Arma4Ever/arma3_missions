if(!hasInterface) exitWith {};

if (player distance ls_1 <= 6) then {


_time = 0;
_varStr = "";

["<t style='text-align:center' font='PuristaSemiBold' color='#bf0000' size = '3'>3", 0, 0,1,1,0,4] spawn BIS_fnc_dynamicText;
sleep 1;
["<t style='text-align:center' font='PuristaSemiBold' color='#bf0000' size = '3'>2", 0, 0,1,1,0,4] spawn BIS_fnc_dynamicText;
sleep 1;
["<t style='text-align:center' font='PuristaSemiBold' color='#bf0000' size = '3'>1", 0, 0,1,1,0,4] spawn BIS_fnc_dynamicText;
sleep 1;
ls_1 say3d ["shortBuzzer",300,1,false];
["<t style='text-align:center' font='PuristaSemiBold' color='#00B32C' size = '3'>START", 0, 0,8,1,0,4] spawn BIS_fnc_dynamicText;



while{killhouseRun} do {
_time = _time;
killcount = killcount;
killcountCiv = killcountCiv;
scoreTotal = scoreTotal;
_varStr = "Czas: " + str(_time) + "s\n
			Terrorysci: " + str(killcount) + " z 40\n
			Cywile: " + str(killcountCiv) + " z 10\n
			Punkty: " + str(scoreTotal);
hintSilent _varStr;

sleep 1;

_time = _time + 1;};

sleep 1;

_varStr = "Czas: " + str(_time) + "s\n
			Koncowy wynik: " + str(scoreTotal/_time);
			
"KILLHOUSE CHALLENGE" hintC _varStr;

} else {

	sleep 2;
	ls_1 say3d ["shortBuzzer",300,1,false];};


