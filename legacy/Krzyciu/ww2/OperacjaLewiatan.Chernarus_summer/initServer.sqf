/***********************************************************************
    initServer.sqf
    Poniższy kod wykona się na serwerze w trakcie ładowania misji przez serwer
************************************************************************/

CIVILIAN setFriend [WEST , 1];
CIVILIAN setFriend [EAST , 1];
CIVILIAN setFriend [INDEPENDENT , 1];
WEST setFriend [EAST , 1];
EAST setFriend [WEST , 1];
