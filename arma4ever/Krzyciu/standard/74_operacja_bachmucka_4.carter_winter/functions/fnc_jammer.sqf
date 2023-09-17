#include "script_component.hpp"

params ["_jammer"];

if (isServer) exitWith {};

GVAR(jammerHandler) = [{
	params ["_jammer"];
	if (player distance _jammer < 1500) then {
    if (player getVariable ["tf_receivingDistanceMultiplicator", 1] isNotEqualTo 0.1) then {
		  player setVariable ["tf_receivingDistanceMultiplicator", 0.1];
      player setVariable ["tf_sendingDistanceMultiplicator", 0.1];
    };
	} else {	
		if (player getVariable ["tf_receivingDistanceMultiplicator", 1] isNotEqualTo 1) then {
			player setVariable ["tf_receivingDistanceMultiplicator", 1];
      player setVariable ["tf_sendingDistanceMultiplicator", 1];
		};
	};
}, 10, _jammer] call CBA_fnc_addPerFrameHandler;