if(hasInterface) exitWith {};

_grupaEast = createGroup [EAST,true];
_obstawa_1 =  units obstawa_1;
_obstawa_2 = units obstawa_2;
_specjalsi_nazi = units specjalsi_nazi;
_obstawa_1 joinSilent _grupaEast;
_obstawa_2 joinSilent _grupaEast;
_specjalsi_nazi joinSilent _grupaEast;

waitUntil{triggerActivated trigger_ambient_przejazd_4};

{_x setDamage 1; sleep 0.1;} forEach units _grupaEast;