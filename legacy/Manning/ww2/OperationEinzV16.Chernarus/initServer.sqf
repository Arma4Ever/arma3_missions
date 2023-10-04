/***********************************************************************
    initServer.sqf
    Poniższy kod wykona się na serwerze w trakcie ładowania misji przez serwer
************************************************************************/

//-- Twój kod --//

setDate [1943, 8, 5, 19, 40];

CIVILIAN setFriend [WEST , 1];
CIVILIAN setFriend [EAST , 1];
CIVILIAN setFriend [INDEPENDENT , 1];

docs_1_bool = false;
publicVariable "docs_1_bool";

docs_8_bool = false;
publicVariable "docs_8_bool";

boolDzwieki = true;
publicVariable "boolDzwieki";

alienCheckpointEndwalk = false;
publicVariable "alienCheckpointEndwalk";

alienCheckpointEndwalk_2 = false;
publicVariable "alienCheckpointEndwalk_2";

bool_server_init = true;
publicVariable "bool_server_init";

ostrzalDZ = true;
publicVariable "ostrzalDZ";

_null = [] execVM "skrypty\formacjaJunkers.sqf";