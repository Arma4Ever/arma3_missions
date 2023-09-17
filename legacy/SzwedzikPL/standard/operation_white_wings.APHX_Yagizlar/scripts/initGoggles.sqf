#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Inits goggles for player
 */

0 spawn {
  sleep 3;
  if (
    ((side (group player)) isNotEqualTo west) ||
    {player getVariable [QGVAR(gogglesInited), false]} ||
    {player getVariable [QGVAR(isHQ), false]}
  ) exitWith {};
  private _type = selectRandom [
    "",
    "CFP_Beard",
    "CUP_Beard_Black",
    "CUP_Beard_Brown",
    "CFP_Beard_Grey",
    "CFP_Beard_Red",
    "",
    "CFP_Neck_Plain_Atacs",
    "CFP_Neck_Plain_Atacs2",
    "CFP_Neck_Plain2",
    "CFP_Neck_Plain4",
    "CFP_Neck_Plain3",
    "",
    "CFP_Scarfbeard_green",
    "CFP_Scarfbeard_grey",
    "CFP_Scarfbeard_tan",
    "CFP_Scarfbeard_white",
    "",
    "CUP_FR_NeckScarf3",
    "CFP_Shemagh_Neck_Creme",
    "CUP_FR_NeckScarf",
    "CUP_FR_NeckScarf2",
    "CFP_Shemagh_Neck_M81",
    "CUP_FR_NeckScarf4",
    ""
  ];
  if (_type != "") then {
    player linkItem _type;
  } else {
    player unlinkItem (goggles player);
  };

  player linkItem "ACE_Altimeter";
  player linkItem "ItemGPS";
  player addItem "ACE_microDAGR";

  player setVariable [QGVAR(gogglesInited), true, true];
};
