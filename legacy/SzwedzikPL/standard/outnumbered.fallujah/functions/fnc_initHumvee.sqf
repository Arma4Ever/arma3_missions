#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Inits patrol humvee
 */

params ["_humvee"];

if !(local _humvee) exitWith {};

_humvee setDamage 0.4;

{
  _humvee setHitPointDamage [_x, 1, false];
} forEach [
  // "hitbody",
  "hitengine",
  "hitfuel",
  "hitlfwheel",
  "hitlf2wheel",
  "hitrfwheel",
  "hitrf2wheel",
  "hitrglass",
  "hitlglass",
  "hitglass1",
  "hitglass2",
  "hitglass3",
  "hitglass4",
  "hitglass5",
  "hitlbwheel",
  "hitlmwheel",
  "hitrbwheel",
  "hitrmwheel",
  "hitglass6",
  // "hithull",
  "hitturret",
  "hitgun",
  "#l svetlo",
  "#p svetlo"
];
