#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Ends killhouse
 */

if (
  !(isServer) ||
  {missionNamespace getVariable [QGVAR(cleanupEnabled), false]} ||
  {!(missionNamespace getVariable [QGVAR(khStarted), false])}
) exitWith {};

private _time = round (CBA_missionTime - GVAR(khStartTime));
private _killed = 0;
private _rescued = 3;

missionNamespace setVariable [QGVAR(khActive), false, true];
missionNamespace setVariable [QGVAR(khStarted), false, true];

private _endPanel = missionNamespace getVariable ["mission_kh_endpanel", objNull];

_endPanel setObjectTextureGlobal [1, "data\killhouse\awaiting_training.paa"];
(missionNamespace getVariable ["mission_kh_startpanel", objNull]) setObjectTextureGlobal [0, "data\killhouse\start_training.paa"];

playSound3D ["a3\missions_f_beta\data\sounds\firing_drills\course_active.wss", _endPanel, false, getPosASL _endPanel, 5, 1, 90];

for "_i" from 1 to 9 do {
  private _target = missionNamespace getVariable [format ["mission_popup_t_%1", _i], objNull];
  if !(isNull _target) then {
    if ((_target animationPhase "terc") > 0) then {
      _killed = _killed + 1;
    };
  };
};

for "_i" from 1 to 3 do {
  private _target = missionNamespace getVariable [format ["mission_popup_c_%1", _i], objNull];
  if !(isNull _target) then {
    if ((_target animationPhase "terc") > 0) then {
      _rescued = _rescued - 1;
    };
  };
};

private _minutes = floor (_time / 60);
private _seconds = _time - (_minutes * 60);
private _minutesTxt = str _minutes;
private _secondsTxt = str _seconds;

if (_minutes < 10) then {
  _minutesTxt = "0" + _minutesTxt;
};
if (_seconds < 10) then {
  _secondsTxt = "0" + _secondsTxt;
};

private _timeAr = (_minutesTxt + _secondsTxt) splitString "";
{
  (missionNamespace getVariable [
    format ["mission_kh_t_%1", _forEachIndex + 1],
    objNull
  ]) setObjectTextureGlobal [0, format ["data\killhouse\r_%1.paa", _x]];
} forEach _timeAr;
(missionNamespace getVariable ["mission_kh_t_0", objNull]) setObjectTextureGlobal [0, "data\killhouse\r_time.paa"];
(missionNamespace getVariable ["mission_kh_t_5", objNull]) setObjectTextureGlobal [0, "data\killhouse\r_d.paa"];

(missionNamespace getVariable ["mission_kh_k_0", objNull]) setObjectTextureGlobal [0, "data\killhouse\r_kills.paa"];
(missionNamespace getVariable ["mission_kh_k_1", objNull]) setObjectTextureGlobal [0, format ["data\killhouse\r_%1.paa", _killed]];
(missionNamespace getVariable ["mission_kh_k_2", objNull]) setObjectTextureGlobal [0, "data\killhouse\r_9.paa"];
(missionNamespace getVariable ["mission_kh_k_3", objNull]) setObjectTextureGlobal [0, "data\killhouse\r_s.paa"];

(missionNamespace getVariable ["mission_kh_r_0", objNull]) setObjectTextureGlobal [0, "data\killhouse\r_rescued.paa"];
(missionNamespace getVariable ["mission_kh_r_1", objNull]) setObjectTextureGlobal [0, format ["data\killhouse\r_%1.paa", _rescued]];
(missionNamespace getVariable ["mission_kh_r_2", objNull]) setObjectTextureGlobal [0, "data\killhouse\r_3.paa"];
(missionNamespace getVariable ["mission_kh_r_3", objNull]) setObjectTextureGlobal [0, "data\killhouse\r_s.paa"];
