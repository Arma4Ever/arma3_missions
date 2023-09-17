/*
  Author: SzwedzikPL
  Teleports player on carrier to nearest safe pos
*/

// Exit if player not in carrier area
if !(player inArea carrier_area) exitWith {};

private _positions = [carrier_unstuck_positions, [], {_x distance player}, "ASCEND"] call BIS_fnc_sortBy;
private _pos = getPosASL (_positions # 0);

player setPosASL _pos;
