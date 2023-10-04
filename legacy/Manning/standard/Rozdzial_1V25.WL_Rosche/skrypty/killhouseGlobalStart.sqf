if(hasInterface) exitWith {};

_targets = nearestObjects [ls_1, ["TargetBase"], 500];

killcount = 40;
publicVariable "killcount";

killcountCiv = 10;
publicVariable "killcountCiv";

scoreTotal = 0;
publicVariable "scoreTotal";

killHouseRun = true;
publicVariable "killHouseRun";

if (count _targets < 1) exitWith {}; 

{
	[_x,["Terc",0]] remoteExec ["animateSource",0] ; } forEach _targets;
	
{
	_x addMPEventHandler ["MPHit", {
		[(_this select 0),["Terc",1]] remoteExec ["animateSource",0];
		
		if((typeOf (_this select 0) == "Hostage_PopUp_Moving_90deg_F") || (typeOf (_this select 0) == "Hostage_PopUp2_Moving_90deg_F") || (typeOf (_this select 0) == "Hostage_PopUp3_Moving_90deg_F")) then {
			killcountCiv = killcountCiv - 1;
			scoreTotal = scoreTotal - 100;
			} else {
			killcount = killcount - 1;
			scoreTotal = scoreTotal + 50;
			};
		(_this select 0) removeMPEventHandler ["MPHit",0];
		}];
	} forEach _targets;
	
killhouseBuzzer = true;
publicVariable "killhouseBuzzer";

sleep 1;
killhouseBuzzer = false;
publicVariable "killhouseBuzzer";

waitUntil{killcount == 0 || killcountCiv == 0};

killHouseRun = false;
publicVariable "killHouseRun";