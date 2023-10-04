_skoczek = _this select 0;

removeAllActions _skoczek;

[_skoczek, ["morse", 25, 1]] remoteExec ["say3d", 2, false];
if(hasInterface) exitWith {};
null = [support_start] execVM "skrypty\zrzutSupport.sqf";

hint "poszli";

