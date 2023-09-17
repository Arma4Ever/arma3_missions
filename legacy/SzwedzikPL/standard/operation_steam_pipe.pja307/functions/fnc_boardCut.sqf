#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Handler for board cut action
 */

closeDialog 0;
private _opened = createDialog (format [QGVAR(board_%1_dis), GVAR(currentBoardId)]);
playSound QGVAR(board_cut);
GVAR(currentBoardSatchel) setVariable [QGVAR(boardDisarmed), true, true];
0 spawn {
  sleep 1;
  [QGVAR(boardDisarmed), GVAR(currentBoardSatchelId)] call CBA_fnc_serverEvent;
  hint parseText LLSTRING(Action_DisarmBoard_Success);
};
