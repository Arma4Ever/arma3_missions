#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Checks if group is valid for conversations
 */

params ["_group"];

private _units = units _group;

!(isNull _group) &&
{({alive _x} count _units) >= 2} &&
{(combatBehaviour _group) == "SAFE"} &&
{(_units findIf {(behaviour _x) != "SAFE"}) == -1}
