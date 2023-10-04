#define PATH(fncName) functions\fnc##_##fncName.sqf
#define PREP(fncName) Krzyc##_##fnc##_##fncName = compileFinal preprocessFileLineNumbers #PATH(fncName)
PREP(intro);
PREP(talks);
PREP(rearm);
PREP(most);
PREP(mostLocal);

["bridge_start_repair", {bridge_start hideObjectGlobal false}] call CBA_fnc_addEventHandler;
["bridge_end_repair", {bridge_end hideObjectGlobal false}] call CBA_fnc_addEventHandler;
