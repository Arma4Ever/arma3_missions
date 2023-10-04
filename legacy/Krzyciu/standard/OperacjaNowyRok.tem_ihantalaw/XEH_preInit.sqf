#define PATH(fncName) functions\fnc##_##fncName.sqf
#define PREP(fncName) Krzyc##_##fnc##_##fncName = compileFinal preprocessFileLineNumbers #PATH(fncName)
PREP(intro);
PREP(talks);
PREP(rearm);
