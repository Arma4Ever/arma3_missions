#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Detonates hidden city IEDs
 */

0 spawn {
  for "_i" from 1 to 17 do {
    private _exp = missionNamespace getVariable [format ["mission_ied_%1", _i], objNull];
    if !(isNull _exp) then {
      _exp setDamage 1;
      sleep 1;
    };
  };
};
