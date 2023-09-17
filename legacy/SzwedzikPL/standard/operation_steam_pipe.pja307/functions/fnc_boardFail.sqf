#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Handler for board fail action
 */

if (GVAR(boardFail)) exitWith {};
GVAR(boardFail) = true;
GVAR(currentBoardSatchel) setVariable [QGVAR(boardFailed), true, true];

0 spawn {
  playSound QGVAR(board_beep);
  sleep 0.55;
  playSound QGVAR(board_beep);
  sleep 0.5;
  playSound QGVAR(board_beep);
  sleep 0.45;
  playSound QGVAR(board_beep);
  sleep 0.4;
  playSound QGVAR(board_beep);
  sleep 0.35;
  playSound QGVAR(board_beep);
  sleep 0.3;
  playSound QGVAR(board_beep);
  sleep 0.25;
  playSound QGVAR(board_beep);
  sleep 0.2;
  playSound QGVAR(board_beep);
  sleep 0.15;
  playSound QGVAR(board_beep);
  sleep 0.1;
  playSound QGVAR(board_beep);
  sleep 0.05;
  playSound QGVAR(board_beep);
  sleep 0.04;
  playSound QGVAR(board_beep);
  sleep 0.03;
  playSound QGVAR(board_beep);
  sleep 0.02;
  playSound QGVAR(board_beep);
  sleep 0.1;
  closeDialog 0;
  [QGVAR(boardFailed), 0] call CBA_fnc_serverEvent;
};
