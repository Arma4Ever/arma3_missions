#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Adds target site object to register
 */

params ["_object"];

GVAR(woodenTanksObjects) pushBack _object;
