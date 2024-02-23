#include "script_component.hpp"

private _players = ((playableUnits + switchableUnits) select {
  !(_x isKindOf 'VirtualMan_F')
});

GVAR(allPlayers) = _players;