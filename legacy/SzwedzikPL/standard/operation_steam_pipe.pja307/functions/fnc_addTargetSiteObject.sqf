#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Adds target site object to register
 */

params ["_object"];

GVAR(targetSiteObjects) pushBack _object;
