//Przezbraja/naprawia i uzupełnia paliwo pojazdom w promieniu 50m.
//_rearm = ["naprawa","Serwis Pojazdów","",{[25, [], {[] spawn TwojTag_fnc_rearm}, {hint "Przerwano"}, "Przezbrajanie"] call ace_common_fnc_progressBar},{true}] call ace_interact_menu_fnc_createAction;[NazwaObiektuNaKtórymJestRearm, 0, ["ACE_MainActions"], _rearm] call ace_interact_menu_fnc_addActionToObject;//
//depot to nazwa warsztatu
samolot setVehicleAmmo 1;
samolot setFuel 1;
samolot setDamage 0;
