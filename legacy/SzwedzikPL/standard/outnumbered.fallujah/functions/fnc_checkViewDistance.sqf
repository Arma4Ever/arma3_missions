#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Checks player view distance
 */

if (viewDistance > 520) then {
  setViewDistance 520;
};
if ((getObjectViewDistance # 0) > 520) then {
  setObjectViewDistance 520;
};
