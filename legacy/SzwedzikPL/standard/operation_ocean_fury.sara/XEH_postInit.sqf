/***********************************************************************
    XEH_postInit.sqf
    Poniższy kod wykona się na serwerze oraz u każdego gracza po wczytaniu wszystkich elementów misji
************************************************************************/

if (hasInterface) then {
  if (!(isNil "mission_unit_hq") && {player isEqualTo mission_unit_hq}) then {
    player createDiaryRecord [
        "Diary", [
            "Briefing HQ",
            localize "STR_Mission_Diary_HQ_Brief"
        ]
    ];
  };

  carrier_unstuck_positions = [];
  for "_i" from 1 to 30 do {
    private _logic = missionNamespace getVariable [format ["carrier_unstuck_pos_%1", _i], objNull];
    if !(isNull _logic) then {
      carrier_unstuck_positions pushBack _logic;
    };
  };
  0 spawn {
    sleep 5;
    call mission_fnc_addCarrierInteractions;
    call mission_fnc_addVehicleInteractions;
    call mission_fnc_addMissionInteractions;
  };

  0 spawn mission_fnc_monitorCarrierSafezone;

  ["CBA_loadingScreenDone", {
    if (didJIP) exitWith {};
    [] spawn mission_fnc_intro;
  }] call CBA_fnc_addEventHandler;
};

if (isServer) then {
  0 spawn {
    sleep 0.5;
    [] call mission_fnc_fleetDefence;
    0 spawn mission_fnc_monitorShipsPositions;

    addMissionEventHandler ["BuildingChanged", {
    	_this call mission_fnc_handleBuildingChanged;
    }];

    carrier_ramp_1_panel setObjectTextureGlobal [1, "data\panels\ramp_ready.paa"];
    carrier_ramp_2_panel setObjectTextureGlobal [1, "data\panels\ramp_ready.paa"];
    carrier_ramp_3_panel setObjectTextureGlobal [1, "data\panels\ramp_ready.paa"];

    carrier_quarters_panel setObjectTextureGlobal [0, "data\panels\digit_0.paa"];
    carrier_quarters_panel setObjectTextureGlobal [1, "data\panels\digit_0.paa"];

    private _objects = nearestObjects [carrier_speaker, ["Land_Carrier_01_island_01_F"], 12];
    {
      if ((toLower (typeOf _x)) isEqualTo "land_carrier_01_island_01_f") then {
        _x animateSource ["Door_1_source", 1, true];
        _x animateSource ["Door_2_source", 1, true];
        _x animateSource ["Door_3_source", 1, true];
        _x animateSource ["Door_4_source", 1, true];
      };
    } forEach _objects;

    {
      _x setVariable ["mission_currentSlide", "slide_0", true];
      _x setObjectTextureGlobal [0, "data\slides\slide_0.paa"];
    } forEach [carrier_briefing_screen_1,carrier_briefing_screen_2, carrier_briefing_screen_3]
  };

  uss_titan_helper attachTo [uss_titan, [-1, -82, -18.5]];
  uss_newton_helper attachTo [uss_newton, [-1, -82, -18.5]];

  // Reset curator points
  // RESTORE THIS IN A3CS
  0 spawn {
    while {true} do {
      {_x addCuratorPoints 1;} forEach allCurators;
      sleep 10;
    };
  };
};
