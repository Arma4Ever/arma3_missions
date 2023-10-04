//Przezbraja/naprawia i uzupełnia paliwo pojazdom w promieniu 50m.
//_rearm = ["naprawa","Serwis Pojazdów","",{[25, [], {[] spawn TwojTag_fnc_rearm}, {hint "Przerwano"}, "Przezbrajanie"] call ace_common_fnc_progressBar},{true}] call ace_interact_menu_fnc_createAction;[NazwaObiektuNaKtórymJestRearm, 0, ["ACE_MainActions"], _rearm] call ace_interact_menu_fnc_addActionToObject;//
[-2, {{
_x setVehicleAmmo 1;
_x setFuel 1;
_x setDamage 0;
} forEach [heli_1,heli_2]}] call CBA_fnc_globalExecute;
