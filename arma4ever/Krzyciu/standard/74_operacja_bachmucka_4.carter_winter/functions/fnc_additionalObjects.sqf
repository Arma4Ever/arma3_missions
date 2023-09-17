#include "script_component.hpp"
params ["_object"];

_object hideObject true;

GVAR(additionalObjects) pushBack _object;
