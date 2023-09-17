#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Creates custom simple wrecks
 */

if !(isServer) exitWith {};

private _wreck = createSimpleObject ["ca\tracked\m1a2_tusk_wreck.p3d", [4179.05,4054.08,8.4]];
_wreck setPosWorld [4179.05, 4054.08, 8.4];
_wreck setDir 210;
