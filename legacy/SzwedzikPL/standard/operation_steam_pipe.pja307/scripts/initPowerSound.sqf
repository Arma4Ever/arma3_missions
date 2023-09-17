#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Starts power engine sound
 */

// Power sound
private _powerSwitch = missionNamespace getVariable ["mission_powerswitch", objNull];
if !(isNull _powerSwitch) then {
  private _sound = createSoundSource ["Sound_Factory03", position _powerSwitch, [], 0];
  _powerSwitch setVariable [QGVAR(sound), _sound, true];
};
