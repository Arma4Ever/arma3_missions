/***********************************************************************
    initServer.sqf
    Poniższy kod wykona się na serwerze w trakcie ładowania misji przez serwer
************************************************************************/

//-- Twój kod --//
inwazjaAmbience = true;
publicVariable "inwazjaAmbience";

dropZonebool = false;
publicVariable "dropZonebool";

timer = false;
publicVariable "timer";

boolZad_ObronaEdelweiss = false;
publicVariable "boolZad_ObronaEdelweiss";

projektorOn = true;
publicVariable "projektorOn";

briefingMovement =  true;
publicVariable "briefingMovement";

junkersSiren = true;
publicVariable "junkersSiren";

CIVILIAN setFriend [WEST , 1];
CIVILIAN setFriend [INDEPENDENT , 1];

