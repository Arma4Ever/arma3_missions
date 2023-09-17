#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Enables post-process effects
 */

if !(hasInterface) exitWith {};

private _ccEffect = ppEffectCreate ["colorCorrections", 1478];
_ccEffect ppEffectEnable true;
_ccEffect ppEffectAdjust [0.9, 0.9, 0, [0, 0.1, 0.25, -0.14], [1, 1, 1, 1.26], [0.15, 0.09, 0.09, 0.0]];
_ccEffect ppEffectCommit 0;
