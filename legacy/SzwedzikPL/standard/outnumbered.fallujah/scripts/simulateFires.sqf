#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Manages fires simulation in city
 */

/* First run */
private _players = (playableUnits + switchableUnits) select {alive _x};
{
  if ((_players inAreaArray [getPos _x, 520, 520]) isNotEqualTo []) then {
    _x enableSimulationGlobal true;

    if (is3DENPreview) then {
      private _marker = _x getVariable ["fsf_marker", ""];
      _marker setMarkerColor "ColorGreen";
    };
  };
} forEach fsf_fireObjects;
_players = nil;

/* Loop */
while {fsf_checkFires} do {
  private _players = (playableUnits + switchableUnits) select {alive _x};
  fsf_fireObjects = fsf_fireObjects - [objNull];
  {
    if ((_players inAreaArray [getPos _x, 520, 520]) isNotEqualTo []) then {
      if (simulationEnabled _x) exitWith {};
      _x enableSimulationGlobal true;
    } else {
      if !(simulationEnabled _x) exitWith {};
      _x enableSimulationGlobal false;
    };
    sleep 0.5;
  } forEach fsf_fireObjects;
};
