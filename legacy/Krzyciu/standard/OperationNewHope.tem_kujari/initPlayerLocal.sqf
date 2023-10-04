/***********************************************************************
    initPlayerLocal.sqf
    Poniższy kod wykona się lokalnie u gracza w trakcie ładowania misji przez grę
************************************************************************/
params ["_player", "_jip"];

//Briefing//
#include "briefing.hpp"
//Lepsze promienie świetlne//
"LightShafts" ppEffectAdjust [0.5, 0.6, 0.45, 0.89];
//intro//
if(!_jip) then
{
[] spawn Krzyc_fnc_intro;
} else {};
//Dodanie maski
removeGoggles _player;
_player addGoggles "rhsusf_shemagh2_gogg_od";
//Color correction
private _colorChange = [
{
  if (daytime >= 18.5 || daytime < 5.5) then
  {

    PP_colorC ppEffectEnable false;
    ppEffectDestroy PP_colorC;
  }
  else
  {
    PP_colorC = ppEffectCreate ["ColorCorrections",1500];
    PP_colorC ppEffectAdjust [0.8,0.72,-0.06,
                             [0,0,0,-1],
                             [2,2,2,1.07],
                             [-4,2.47,2.53,0],
                             [0,1,1,0,1,0,4]];
    PP_colorC ppEffectCommit 0;
    PP_colorC ppEffectEnable true;
  };
},450,[]] call CBA_fnc_addPerFrameHandler;
