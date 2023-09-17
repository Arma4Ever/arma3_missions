#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Init script for mannequins
 */

if (missionNamespace getVariable [QGVAR(cleanupEnabled), false]) exitWith {};

for "_i" from 1 to 6 do {
  private _man = missionNamespace getVariable [format ["mission_mannequin_%1", _i], objNull];
  if !(isNull _man) then {
    for "_y" from 0 to 5 do {
      _man setObjectMaterial [_y, "a3\characters_f_bootcamp\common\data\vrarmoremmisive.rvmat"];
      _man setObjectTexture [_y, "#(rgb,8,8,3)color(0,0,0,1)"];
    };
    _man addEventHandler ["HitPart", {_this call FUNC(handleMannequinHitpart);}];
  };
};
