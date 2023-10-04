/***********************************************************************
    initPlayerLocal.sqf
    Poniższy kod wykona się lokalnie u gracza w trakcie ładowania misji przez grę
************************************************************************/
params ["_player", "_jip"];

//Briefing//
#include "briefing.hpp"

//Lepsze promienie świetlne//
"LightShafts" ppEffectAdjust [0.3, 0.4, 0.4, 0.8];
//Dodanie maski
private _gogle = selectRandom ["UK3CB_G_Neck_Shemag_Oli","G_mas_chi_scarf_gog","G_mas_chi_scarf","rhsusf_shemagh_grn","rhsusf_shemagh2_grn","rhsusf_shemagh_gogg_grn","rhsusf_shemagh2_gogg_grn"];
removeGoggles _player;
_player addGoggles _gogle;

private _nv = ["visionMode",
{
if (hmd player isEqualTo "NVGoggles_INDEP") then {
    visionMode = currentVisionMode player;
    switch visionMode do
      {
        case 0: {
          9876 cutText ["", "BLACK IN", 1.5, false];
          ppEffectDestroy pp_NVG;
          player say2D "nvgOFF";
        };
        case 1: {
          9876 cutText ["", "BLACK IN", 1.5, false];
          pp_NVG = ppEffectCreate ["ColorCorrections", 1502];
          pp_NVG ppEffectEnable true;
          pp_NVG ppEffectAdjust [1, 0.8, 0, [0, 0.1, 0.2, 0], [0, 0.95, 1.2, 0.2], [1, 0.5, 1, 0]];
          pp_NVG ppEffectCommit 0;
          pp_NVG ppEffectForceInNVG true;
          player say2D "nvgON";
        };
     };
};
}] call CBA_fnc_addPlayerEventHandler;

private _grassCut = ["grassCutA","Wyrwij trawę","",{[] call Krzyc_fnc_cutGrass},{true}] call ace_interact_menu_fnc_createAction;
[_player, 1, ["ACE_SelfActions"], _grassCut] call ace_interact_menu_fnc_addActionToObject;
