#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Collapses main tunnel entrance
 */

if !(isServer) exitWith {};
if (missionNamespace getVariable [QGVAR(mainCollapsed), false]) exitWith {};
missionNamespace setVariable [QGVAR(mainCollapsed), true, true];

[QGVAR(zeusLog), "main collapse"] call CBA_fnc_globalEvent;

0 spawn {
  deleteVehicle (missionNamespace getVariable ["mission_main_collapse_tr_1", objNull]);
  deleteVehicle (missionNamespace getVariable ["mission_main_collapse_tr_2", objNull]);

  private _tmpPos = [496.15, 16.6382, 0];
  private _posWorld = [114.709, 11.193, 516.626];
  private _vectorDU = [[0.992994, 0.11814, -0.00249276], [0.00741744, -0.0412639, 0.999121]];

  private _charge1 = createMine ["SatchelCharge_F", _tmpPos, [], 0];
  private _charge2 = createMine ["SatchelCharge_F", _tmpPos, [], 0];
  _charge1 setPos [111.014, 3.12969, 0.3];
  _charge2 setPos [118.306, 14.366, 0.3];
  sleep 0.001;
  _charge1 setDamage 1;
  _charge2 setDamage 1;

  playSound3D [getMissionPath "data\sounds\main_collapse.ogg", objNull, false, [116.727,9.38605,515.756], 5, 1, 200];
  [QGVAR(rockDrop), [114.709, 11.193, 6.4]] call CBA_fnc_globalEvent;
  [QGVAR(mainCollapseShake)] call CBA_fnc_globalEvent;

  sleep 0.5;

  private _objectTemp = "Land_R_rock_general2" createVehicle _tmpPos;
  _objectTemp setPosWorld _posWorld;
  _objectTemp setVectorDirAndUp _vectorDU;
  [QGVAR(mainCollapseLocal), 0] call CBA_fnc_globalEvent;

  private _objectSync = createSimpleObject ["a3\rocks_f_enoch\r_rock_general2.p3d", _tmpPos];
  _objectSync setVectorDirAndUp _vectorDU;
  sleep 30;
  _objectSync setPosWorld _posWorld;
  sleep 30;
  deleteVehicle _objectTemp;
};
