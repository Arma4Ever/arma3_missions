/***********************************************************************
    initPlayerLocal.sqf
    Poniższy kod wykona się lokalnie u gracza w trakcie ładowania misji przez grę
************************************************************************/
params ["_player", "_jip"];


//-- Briefing --//
#include "briefing.hpp"

"LightShafts" ppEffectAdjust [0.5, 0.6, 0.45, 0.89];
//a3c only rang check interaction//
_rangacheck = ["ranga","Sprawdź rangę","",{[] spawn Krzyc_fnc_ranga},{true}] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions"], _rangacheck] call ace_interact_menu_fnc_addActionToObject;
_plecakon= ["plecak","Załóż plecak","",{[] spawn Krzyc_fnc_plecakon},{true}] call ace_interact_menu_fnc_createAction;
[player,1,["ACE_SelfActions"], _plecakon] call ace_interact_menu_fnc_addActionToObject;

//intro//
if(!_jip) then
{
[] spawn Krzyc_fnc_intro;
} else {};
  
