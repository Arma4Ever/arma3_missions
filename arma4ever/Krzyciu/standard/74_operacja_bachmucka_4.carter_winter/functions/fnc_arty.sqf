#include "script_component.hpp"

missionNamespace setVariable ["mapclick",false,true];
openMap true;
hint localize "STR_Krzyc_Art_Call";
["Krzyc_arty", "onMapSingleClick", {
    private _marker_Bomb = createMarkerLocal ['Bomb',_pos];
    _marker_Bomb setMarkerAlphaLocal 1;
    _marker_Bomb setMarkerColorLocal 'ColorRed';
    _marker_Bomb setMarkerShapeLocal 'ELLIPSE';
    _marker_Bomb setMarkerBrushLocal 'Solid';
    _marker_Bomb setMarkerSizeLocal [77.5, 77.5];
    hint localize "STR_Krzyc_Art_Confirm";
    missionNamespace setVariable ["Krzyc_art", 0, true];
    [_pos] spawn {
        params ["_pos"];
        sleep 2;
        missionNamespace setVariable ["mapclick",true,true];
        openMap false;
        sleep 37;
       [
                _pos,
                'Sh_155mm_AMOS',
                70,
                GVAR(ammoCount),
                [3,7],
                {},
                0,
                600,
                100,
                ['shell1','shell2']
        ] spawn BIS_fnc_fireSupportVirtual;
    };
}] call BIS_fnc_addStackedEventHandler;

waitUntil {
    sleep 1;
    missionNamespace getVariable ["mapclick",false]
};
["Krzyc_arty", "onMapSingleClick"] call BIS_fnc_removeStackedEventHandler;

[{deleteMarkerLocal "Bomb"; hint localize "STR_Krzyc_Art_End"}, [], 100] call CBA_fnc_waitAndExecute;

private _time = 2600 + random 351;
[{missionNamespace setVariable [QGVAR(art), 1, true];hint localize "STR_Krzyc_Art_Rearmed";}, [], _time] call CBA_fnc_waitAndExecute;
