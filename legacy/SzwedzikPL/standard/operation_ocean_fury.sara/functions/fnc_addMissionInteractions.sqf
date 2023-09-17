/*
  Author: SzwedzikPL
  Adds interactions for mission content
*/

// Studio entrance action
private _studioEntranceAction = [
  "mission_studioEntrance",
  localize "STR_Mission_EnterStudio_Action",
  "a3\ui_f\data\igui\cfg\simpletasks\types\getin_ca.paa",
  {
    private _status = missionNamespace getVariable ["mission_studio_door_unlocked", false];
    if !(_status) exitWith {
      hint localize "STR_Mission_Hint_DoorLocked";
    };
    player setPosASL (getPosASL tvstudio_exit_location);
    player setDir 0;
  },
  {true}
] call ace_interact_menu_fnc_createAction;
[tvstudio_entrance_panel, 0, [], _studioEntranceAction] call ace_interact_menu_fnc_addActionToObject;

// Studio exit action
private _studioExitAction = [
  "mission_studioExit",
  localize "STR_Mission_ExitStudio_Action",
  "a3\ui_f\data\igui\cfg\simpletasks\types\getout_ca.paa",
  {
    player setPosASL (getPosASL tvstudio_entrance_location);
    player setDir 180;
  },
  {true}
] call ace_interact_menu_fnc_createAction;
[tvstudio_exit_panel, 0, [], _studioExitAction] call ace_interact_menu_fnc_addActionToObject;

// Ambasador move to level 0 action
private _moveAmbasadorAction = [
  "mission_moveAmbasador",
  localize "STR_Mission_MoveAmbasadorToLevel0_Action",
  "a3\ui_f\data\igui\cfg\simpletasks\types\run_ca.paa",
  {
    tvstudio_ambasador setPosASL (getPosASL tvstudio_ambasador_location);
    tvstudio_ambasador setDir 180;
  },
  {alive tvstudio_ambasador && {tvstudio_ambasador inArea mission_studio_ambasador_area}}
] call ace_interact_menu_fnc_createAction;
[tvstudio_ambasador, 0, ["ACE_MainActions"], _moveAmbasadorAction] call ace_interact_menu_fnc_addActionToObject;

/*
arcadia_civ_hospital
*/
