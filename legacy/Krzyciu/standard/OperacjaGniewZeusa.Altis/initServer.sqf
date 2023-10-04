//Cywile są friendly dla wszystkich stron//
CIVILIAN setFriend [EAST , 1];
CIVILIAN setFriend [INDEPENDENT , 1];
CIVILIAN setFriend [WEST , 1];
{_x disableAI "PATH"} forEach ((getMissionLayerEntities "Players") select 0);
