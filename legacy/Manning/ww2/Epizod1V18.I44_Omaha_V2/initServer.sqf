/***********************************************************************
    initServer.sqf
    Poniższy kod wykona się na serwerze w trakcie ładowania misji przez serwer
************************************************************************/

//-- Twój kod --//
setDate [1944, 6, 6, 06, 44];

CIVILIAN setFriend [WEST , 1];
CIVILIAN setFriend [INDEPENDENT , 1];

WEST setFriend [CIVILIAN , 1];
INDEPENDENT setFriend [CIVILIAN , 1];

skonczOstrzal = false; 
publicVariable "skonczOstrzal";

ostrzalPlazy = true;
publicVariable "ostrzalPlazy";

pozarPlaza = true;
publicVariable "pozarPlaza";

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

radio_11_dzwiek = true;
publicVariable "radio_11_dzwiek";

radio_12_dzwiek = true;
publicVariable "radio_12_dzwiek";

radio_13_dzwiek = true;
publicVariable "radio_13_dzwiek";

radio_14_dzwiek = true;
publicVariable "radio_14_dzwiek";

radio_15_dzwiek = true;
publicVariable "radio_15_dzwiek";

radio_16_dzwiek = true;
publicVariable "radio_16_dzwiek";

wybor = false;
publicVariable "wybor";

kontynuujMisje = false;
publicVariable "kontynuujMisje";

zakonczMisje = false;
publicVariable "zakonczMisje";

plazaZajeta = false;
publicVariable "plazaZajeta";