/***********************************************************************
    initServer.sqf
    Poniższy kod wykona się na serwerze w trakcie ładowania misji przez serwer
************************************************************************/
//-- Twój kod --//
setDate [1944, 6, 6, 01, 22];

CIVILIAN setFriend [WEST , 1];
CIVILIAN setFriend [INDEPENDENT , 1];

introBool = true;
publicVariable "introBool";

radio_1_dzwiek = true;
publicVariable "radio_1_dzwiek";

radio_2_dzwiek = true;
publicVariable "radio_2_dzwiek";

radio_3_dzwiek = true;
publicVariable "radio_3_dzwiek";

radio_4_dzwiek = true;
publicVariable "radio_4_dzwiek";

radio_5_dzwiek = true;
publicVariable "radio_5_dzwiek";

radio_6_dzwiek = true;
publicVariable "radio_6_dzwiek";

radio_7_dzwiek = true;
publicVariable "radio_7_dzwiek";

radio_8_dzwiek = true;
publicVariable "radio_8_dzwiek";

radio_9_dzwiek = true;
publicVariable "radio_9_dzwiek";

radio_10_dzwiek = true;
publicVariable "radio_10_dzwiek";

boolKoniecMisji = false; 
publicVariable "boolKoniecMisji";

siren_gl attachTo [c47_4, [0,0,0]];