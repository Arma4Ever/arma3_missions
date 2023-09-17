#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Inits patrol humvee
 */

params ["_object"];

if !(isServer) exitWith {};

fsf_fireObjects pushBack _object;
