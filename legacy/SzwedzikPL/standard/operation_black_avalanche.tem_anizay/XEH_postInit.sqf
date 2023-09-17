/***********************************************************************
    XEH_postInit.sqf
    Poniższy kod wykona się na serwerze oraz u każdego gracza po wczytaniu wszystkich elementów misji
************************************************************************/

if (hasInterface) then {
  if !(isNil "mission_unit_hq" || {isNull mission_unit_hq}) then {
    if (player isEqualTo mission_unit_hq) then {
      player createDiaryRecord [
        "Diary", [
          "Briefing HQ",
          localize "STR_Mission_Diary_BriefHQ_Text"
        ]
      ];
    };
  };

  0 spawn {
    sleep 1;
    private _briefingSlidesPanelAction = [
      "mission_briefingSlidesPanel",
      localize "STR_Mission_openBriefingSlidesPanel_Action",
      "a3\ui_f\data\igui\cfg\simpletasks\types\whiteboard_ca.paa",
      {createDialog "carrierBriefingSlidesDialog"},
      {true}
    ] call ace_interact_menu_fnc_createAction;
    [base_briefing_panel, 0, [], _briefingSlidesPanelAction] call ace_interact_menu_fnc_addActionToObject;

    if (!(isNil "compound_port_lamp") && {!(isNull compound_port_lamp)}) then {
      private _disablePortLampAction = [
        "mission_disablePortLamp",
        localize "STR_Mission_disablePortLamp_Action",
        "a3\ui_f\data\igui\cfg\simpletasks\types\interact_ca.paa",
        {deleteVehicle _target},
        {true}
      ] call ace_interact_menu_fnc_createAction;
      [compound_port_lamp, 0, [], _disablePortLampAction] call ace_interact_menu_fnc_addActionToObject;
    };

    if (isNil "power_transformer_helper" || {isNull power_transformer_helper}) exitWith {};
    private _transformerAction = [
      "mission_transformerAction",
      localize "STR_Mission_Action_TurnOffPower",
      "a3\ui_f\data\igui\cfg\simpletasks\types\interact_ca.paa",
      {
        [
          5,
          [],
          {
            ["mission_disable_transformer", []] call CBA_fnc_serverEvent;
            0 spawn {
              sleep 2;
              hint localize "STR_Mission_Action_TurnOffPower_Hint";
            };
          },
          {},
          localize "STR_Mission_Action_TurnOffPower_Progress"
        ] call ace_common_fnc_progressBar;
      },
      {true},
      {},
      [],
      [0,0,0],
      4
    ] call ace_interact_menu_fnc_createAction;
    [power_transformer_helper, 0, [], _transformerAction] call ace_interact_menu_fnc_addActionToObject;
  };

  ["CBA_loadingScreenDone", {
    if (didJIP) exitWith {};
    0 spawn mission_fnc_intro;
  }] call CBA_fnc_addEventHandler;
};

if (isServer) then {
  0 spawn {
    sleep 0.001;

    {
      _x setVariable ["mission_currentSlide", "slide_0", true];
      _x setObjectTextureGlobal [0, "data\slides\slide_0.paa"];
    } forEach [base_briefing_screen_1, base_briefing_screen_2, base_briefing_screen_3];

    ["data_mockup"] spawn mission_fnc_spawnSimpleObjects;
    ["data_compound"] spawn mission_fnc_spawnSimpleObjects;

    sleep 5;

    // Play sound on start to preload global sound channel
    // Makes sure all 3d sounds will play in future
    playSound3D [
      getMissionPath "data\transformer.ogg",
      power_transformer,
      false,
      getPosASL power_transformer,
      4.5,
      1,
      150
    ];
  };

  // Reset curator points
  // RESTORE THIS IN A3CS
  0 spawn {
    while {true} do {
      {_x addCuratorPoints 1;} forEach allCurators;
      sleep 10;
    };
  };
};
