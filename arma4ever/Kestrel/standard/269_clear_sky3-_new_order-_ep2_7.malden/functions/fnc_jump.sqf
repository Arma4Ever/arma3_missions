#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * HALO Jump function
 */

if !(hasInterface && {alive ace_player}) exitWith {};

if ((backpack ace_player) != "B_Parachute") exitWith {
  hint "Brak spadochronu na plecach";
};

if !("ACE_Altimeter" in (assignedItems ace_player)) exitWith {
  hint "Brak wysokościomierza";
};

0 spawn {
  // Czarny ekran
  titleCut ["", "BLACK FADED", 999];

  sleep 1;

  playSound QGVAR(jump);
  playSound QGVAR(jump);
  playSound QGVAR(jump);
  playSound QGVAR(jump);
  playSound QGVAR(jump);
  playSound QGVAR(jump);

  sleep 1.5;

  private _pos = getMarkerPos "marker_dropzone";
  _pos set [2, 10000];

  ace_player setPos _pos;

  sleep 2;

  titleCut ["", "BLACK IN", 4];

};


