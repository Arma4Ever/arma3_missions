#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Adds curator modules
 */

// FUNCTIONS

["- MISJA: Fncs", "Wylacz dyn sim", {
  params ["", "_target"];
  if (isNull _target) exitWith {};
  [QGVAR(switchDynSim), [_target, false]] call CBA_fnc_serverEvent;
}] call zen_custom_modules_fnc_register;

["- MISJA: Fncs", "Wlacz dyn sim", {
  params ["", "_target"];
  if (isNull _target) exitWith {};
  [QGVAR(switchDynSim), [_target, true]] call CBA_fnc_serverEvent;
}] call zen_custom_modules_fnc_register;

// EFFECTS

["- MISJA: Effects", "Small cave quake", {
  ["Small cave quake?", [], {
    [QGVAR(smallQuake), 0] call CBA_fnc_globalEvent;
  }, {}, []] call zen_dialog_fnc_create;
}] call zen_custom_modules_fnc_register;

["- MISJA: Effects", "Surface quake", {
  ["Surface quake?", [], {
    [QGVAR(surfaceQuake), 0] call CBA_fnc_globalEvent;
  }, {}, []] call zen_dialog_fnc_create;
}] call zen_custom_modules_fnc_register;

["- MISJA: Effects", "Init conv sys", {
  params ["", "_target"];
  if (isNull _target || {!(_target isKindOf "CAManBase")}) exitWith {};
  _target spawn FUNC(initConvSys);
}] call zen_custom_modules_fnc_register;

["- MISJA: Effects", "Shout", {
  params ["", "_target"];
  if (isNull _target || {!(_target isKindOf "CAManBase")}) exitWith {};
  [QGVAR(shout), [_target, ceil (random 58)]] call CBA_fnc_serverEvent;
}] call zen_custom_modules_fnc_register;

// ANIMS

["- MISJA: Anims", "Init work anim", {
  params ["", "_target"];
  if (isNull _target || {!(_target isKindOf "CAManBase")}) exitWith {};
  _target spawn FUNC(workAnim);
}] call zen_custom_modules_fnc_register;

["- MISJA: Anims", "SitDown", {
  params ["", "_target"];
  if (isNull _target || {!(_target isKindOf "CAManBase")}) exitWith {};
  [QGVAR(unitAnimSitDown), [_target], _target] call CBA_fnc_targetEvent;
}] call zen_custom_modules_fnc_register;

["- MISJA: Anims", "Treated", {
  params ["", "_target"];
  if (isNull _target || {!(_target isKindOf "CAManBase")}) exitWith {};
  [QGVAR(unitAnimAction), [_target, "Treated"], _target] call CBA_fnc_targetEvent;
}] call zen_custom_modules_fnc_register;

["- MISJA: Anims", "GestureHi", {
  params ["", "_target"];
  if (isNull _target || {!(_target isKindOf "CAManBase")}) exitWith {};
  [QGVAR(unitAnimAction), [_target, "gestureHi"], _target] call CBA_fnc_targetEvent;
}] call zen_custom_modules_fnc_register;

["- MISJA: Anims", "GesturePoint", {
  params ["", "_target"];
  if (isNull _target || {!(_target isKindOf "CAManBase")}) exitWith {};
  [QGVAR(unitAnimAction), [_target, "gesturePoint"], _target] call CBA_fnc_targetEvent;
}] call zen_custom_modules_fnc_register;

["- MISJA: Anims", "GestureAdvance", {
  params ["", "_target"];
  if (isNull _target || {!(_target isKindOf "CAManBase")}) exitWith {};
  [QGVAR(unitAnimAction), [_target, "gestureAdvance"], _target] call CBA_fnc_targetEvent;
}] call zen_custom_modules_fnc_register;

["- MISJA: Anims", "GestureAttack", {
  params ["", "_target"];
  if (isNull _target || {!(_target isKindOf "CAManBase")}) exitWith {};
  [QGVAR(unitAnimAction), [_target, "gestureAttack"], _target] call CBA_fnc_targetEvent;
}] call zen_custom_modules_fnc_register;

["- MISJA: Anims", "GestureCeaseFire", {
  params ["", "_target"];
  if (isNull _target || {!(_target isKindOf "CAManBase")}) exitWith {};
  [QGVAR(unitAnimAction), [_target, "gestureCeaseFire"], _target] call CBA_fnc_targetEvent;
}] call zen_custom_modules_fnc_register;

["- MISJA: Anims", "GestureCover", {
  params ["", "_target"];
  if (isNull _target || {!(_target isKindOf "CAManBase")}) exitWith {};
  [QGVAR(unitAnimAction), [_target, "gestureCover"], _target] call CBA_fnc_targetEvent;
}] call zen_custom_modules_fnc_register;

["- MISJA: Anims", "GestureFollow", {
  params ["", "_target"];
  if (isNull _target || {!(_target isKindOf "CAManBase")}) exitWith {};
  [QGVAR(unitAnimAction), [_target, "gestureFollow"], _target] call CBA_fnc_targetEvent;
}] call zen_custom_modules_fnc_register;

["- MISJA: Anims", "GestureFreeze", {
  params ["", "_target"];
  if (isNull _target || {!(_target isKindOf "CAManBase")}) exitWith {};
  [QGVAR(unitAnimAction), [_target, "gestureFreeze"], _target] call CBA_fnc_targetEvent;
}] call zen_custom_modules_fnc_register;

["- MISJA: Anims", "GestureGo", {
  params ["", "_target"];
  if (isNull _target || {!(_target isKindOf "CAManBase")}) exitWith {};
  [QGVAR(unitAnimAction), [_target, "gestureGo"], _target] call CBA_fnc_targetEvent;
}] call zen_custom_modules_fnc_register;

["- MISJA: Anims", "GestureUp", {
  params ["", "_target"];
  if (isNull _target || {!(_target isKindOf "CAManBase")}) exitWith {};
  [QGVAR(unitAnimAction), [_target, "gestureUp"], _target] call CBA_fnc_targetEvent;
}] call zen_custom_modules_fnc_register;

["- MISJA: Anims", "DismountSide", {
  params ["", "_target"];
  if (isNull _target || {!(_target isKindOf "CAManBase")}) exitWith {};
  [QGVAR(unitAnimAction), [_target, "DismountSide"], _target] call CBA_fnc_targetEvent;
}] call zen_custom_modules_fnc_register;

["- MISJA: Anims", "MountSide", {
  params ["", "_target"];
  if (isNull _target || {!(_target isKindOf "CAManBase")}) exitWith {};
  [QGVAR(unitAnimAction), [_target, "MountSide"], _target] call CBA_fnc_targetEvent;
}] call zen_custom_modules_fnc_register;

// EVENTS

["- MISJA: Events", "Alarm", {
  if (missionNamespace getVariable [QGVAR(alarmSounded), false]) exitWith {};
  ["Alarm?", [], {
    if (missionNamespace getVariable [QGVAR(alarmSounded), false]) exitWith {};
    [QGVAR(soundAlarm), 0] call CBA_fnc_serverEvent;
  }, {}, []] call zen_dialog_fnc_create;
}] call zen_custom_modules_fnc_register;

["- MISJA: Events", "Cave ent collapse", {
  if (missionNamespace getVariable [QGVAR(mainCollapsed), false]) exitWith {};
  ["Cave ent collapse?", [], {
    if (missionNamespace getVariable [QGVAR(mainCollapsed), false]) exitWith {};
    [QGVAR(mainCollapse), 0] call CBA_fnc_serverEvent;
  }, {}, []] call zen_dialog_fnc_create;
}] call zen_custom_modules_fnc_register;

// MISSION FLOW

["- MISJA: Flow", "0. HQ Hint", {
  createDialog QGVAR(zeusHQHint);
}] call zen_custom_modules_fnc_register;

["- MISJA: Flow", "1. START OP", {
  if (missionNamespace getVariable [QGVAR(planeSequenceStarted), false]) exitWith {};
  ["START OP?", [], {
    if (missionNamespace getVariable [QGVAR(planeSequenceStarted), false]) exitWith {};
    [QGVAR(initPlaneSequence), 0] call CBA_fnc_serverEvent;
  }, {}, []] call zen_dialog_fnc_create;
}] call zen_custom_modules_fnc_register;

["- MISJA: Flow", "2. EXFIL", {
  if (missionNamespace getVariable [QGVAR(exfilStarted), false]) exitWith {};
  ["EXFIL?", [], {
    if (missionNamespace getVariable [QGVAR(exfilStarted), false]) exitWith {};
    [QGVAR(startExfil), 0] call CBA_fnc_serverEvent;
  }, {}, []] call zen_dialog_fnc_create;
}] call zen_custom_modules_fnc_register;
