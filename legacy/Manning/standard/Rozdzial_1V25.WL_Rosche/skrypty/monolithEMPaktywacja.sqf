_null = [] execVM "skrypty\monolithEMPsoundMain.sqf";
_null = [monolit] execVM "skrypty\monolithEMPshockwave.sqf";
_null = [monolit] execVM "skrypty\monolithEMPradiation.sqf";

sleep 5;

_null = [monolit] execVM "skrypty\monolithEMPVFX.sqf";

sleep 15;

_null = [] execVM "skrypty\monolithEMPvehicle.sqf";