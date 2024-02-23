#include "script_component.hpp"

private _players = ((playableUnits + switchableUnits) select {
  !(_x isKindOf 'VirtualMan_F')
});

private _player = selectRandom GVAR(allPlayers);

private _pos = player getRelPos [(75 + random 300), random 360];
_pos set [2, 400];
if (
  _pos inArea [
        [1625.06,3008.82,0], // Pozycja helek
        200,
        200,
        0,
        false
  ]
) exitWith {
  0 call FUNC(getImpactPos);
};

[QGVAR(meteorLocal), [_pos]] call CBA_fnc_globalEvent;