#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Adds base extra objects for cleanup later
 */

params ["_object"];

GVAR(baseExtraObjects) pushBack _object;
