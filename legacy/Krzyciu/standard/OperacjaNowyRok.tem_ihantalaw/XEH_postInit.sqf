/***********************************************************************
    XEH_postInit.sqf
    Poniższy kod wykona się na serwerze oraz u każdego gracza po wczytaniu wszystkich elementów misji
************************************************************************/
[ace_cargo_fnc_loadItem, [med_1, tank_1, true]]call CBA_fnc_execNextFrame;
[ace_cargo_fnc_loadItem, [med_2, boat_1, true]]call CBA_fnc_execNextFrame;
[ace_cargo_fnc_loadItem, [med_3, boat_2, true]]call CBA_fnc_execNextFrame;
[ace_cargo_fnc_loadItem, [ammo_1, tank_1, true]]call CBA_fnc_execNextFrame;
[ace_cargo_fnc_loadItem, [ammo_2, boat_1, true]]call CBA_fnc_execNextFrame;
[ace_cargo_fnc_loadItem, [ammo_3, boat_2, true]]call CBA_fnc_execNextFrame;
