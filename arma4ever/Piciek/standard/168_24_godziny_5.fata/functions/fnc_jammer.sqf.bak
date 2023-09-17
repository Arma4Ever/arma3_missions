#include "script_component.hpp"

//if (isServer) exitWith {};

GVAR(jammerHandler) = [{
	if !(missionNamespace getVariable [QGVAR(jammer), true]) exitWith {
		[GVAR(jammerHandler)] call CBA_fnc_removePerFrameHandler;
	};
	if (player distance mission_jammer_obj < 500) then {
		if (player getVariable ["tf_sendingDistanceMultiplicator", 1] isNotEqualTo 0) then {
			player setVariable ["tf_receivingDistanceMultiplicator", 1000];
			player setVariable ["tf_sendingDistanceMultiplicator", 0];
		};
	} else {
		if (player getVariable ["tf_receivingDistanceMultiplicator", 1] isNotEqualTo 1) then {
			player setVariable ["tf_receivingDistanceMultiplicator", 1];
			player setVariable ["tf_sendingDistanceMultiplicator", 1];
		};
	};
}, 10, []] call CBA_fnc_addPerFrameHandler;