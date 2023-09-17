/*
  Author: SzwedzikPL
  Adds all interactions for carrier
*/

// Crew sound panel
private _soundPanelAction = [
  "mission_carrierSoundPanel",
  localize "STR_Mission_Dialog_SoundPanel_Title",
  "a3\ui_f\data\igui\cfg\simpletasks\types\listen_ca.paa",
  {createDialog "carrierSoundsDialog"},
  {_player getVariable ["isCarrierCrew", false]}
] call ace_interact_menu_fnc_createAction;
["CAManBase", 1, ["ACE_SelfActions"], _soundPanelAction, true] call ace_interact_menu_fnc_addActionToClass;

// Animations
private _crewAnimationsAction = [
  "mission_carrierCrewAnimations",
  "[USS] Animacje",
  "",
  {},
  {_player getVariable ["isCarrierCrew", false]}
] call ace_interact_menu_fnc_createAction;
["CAManBase", 1, ["ACE_SelfActions"], _crewAnimationsAction, true] call ace_interact_menu_fnc_addActionToClass;

{
  _x params ["_id", "_title", "_anim"];
  private _action = [
    "mission_carrierCrewAnimations" + _id,
    _title,
    "",
    compile format ["[ace_player, '%1'] remoteExec ['switchMove', 0]", _anim],
    {_player getVariable ["isCarrierCrew", false]}
  ] call ace_interact_menu_fnc_createAction;
  ["CAManBase", 1, ["ACE_SelfActions", "mission_carrierCrewAnimations"], _action, true] call ace_interact_menu_fnc_addActionToClass;
} forEach [
  ["Crouch", "Crouch", "Acts_JetsCrewaidFCrouch_in"],
  ["CrouchThumbup", "[Crouch] Thumbup", "Acts_JetsCrewaidFCrouchThumbup_in"],
  ["Launch", "[Crouch] Launch", "Acts_JetsShooterShootingLaunch_in"],
  ["EnginesOn", "Engines On", "Acts_JetsMarshallingEnginesOn_in"],
  ["EnginesOff", "Engines Off", "Acts_JetsMarshallingEnginesOff_in"],
  ["Straight", "Go Straight", "Acts_JetsMarshallingStraight_in"],
  ["Left", "Go Left", "Acts_JetsMarshallingLeft_in"],
  ["Right", "Go Right", "Acts_JetsMarshallingRight_in"],
  ["Slow", "Go Slow", "Acts_JetsMarshallingSlow_in"],
  ["Stop", "Stop", "Acts_JetsMarshallingStop_in"],
  ["EmergencyStop", "Emergency Stop", "Acts_JetsMarshallingEmergencyStop_in"]
];

// Unstuck carrier actions
private _unstuckAction = [
  "mission_carrierUnstuck",
  localize "STR_Mission_Action_UnstuckPlayer",
  "a3\ui_f\data\igui\cfg\simpletasks\types\walk_ca.paa",
  {call mission_fnc_carrierUnstuck},
  {(_player inArea carrier_area) && {isNull objectParent _player}}
] call ace_interact_menu_fnc_createAction;
["CAManBase", 1, ["ACE_SelfActions"], _unstuckAction, true] call ace_interact_menu_fnc_addActionToClass;

private _saveInQuartersAction = [
  "mission_carrierSaveInQuarters",
  localize "STR_Mission_Action_SaveInQuarters",
  "a3\ui_f\data\igui\cfg\simpletasks\types\land_ca.paa",
  {["mission_carrier_saveInQuarters", [_target]] call CBA_fnc_serverEvent},
  {
    ((side group _target) isEqualTo civilian)
    && {_target inArea carrier_quarters_area}
    && {isNull (attachedTo _target)}
    && {alive _target}
  }
] call ace_interact_menu_fnc_createAction;
["CAManBase", 0, ["ACE_MainActions"], _saveInQuartersAction, true] call ace_interact_menu_fnc_addActionToClass;

// Door actions
private _doorAction = [
  "mission_carrierDoorAction",
  localize "STR_Mission_Action_Door",
  "a3\ui_f\data\igui\cfg\simpletasks\types\getin_ca.paa",
  {},
  {true}
] call ace_interact_menu_fnc_createAction;

private _doorActions = [
  ["mission_carrierDoorAction6", "[6] Maszt", "<t size='1.5'>Poziom 6</t><br/><t size='3'>Maszt</t>", carrier_door_level_6],
  ["mission_carrierDoorAction5", localize "STR_Mission_Action_DoorLevel5", localize "STR_Mission_Action_DoorLevel5Desc", carrier_door_level_5],
  ["mission_carrierDoorAction4", localize "STR_Mission_Action_DoorLevel4", localize "STR_Mission_Action_DoorLevel4Desc", carrier_door_level_4],
  ["mission_carrierDoorAction3", "[3] Mostek", "<t size='1.5'>Poziom 3</t><br/><t size='3'>Mostek</t>", carrier_door_level_3],
  ["mission_carrierDoorAction2", localize "STR_Mission_Action_DoorLevel2", localize "STR_Mission_Action_DoorLevel2Desc", carrier_door_level_2],
  ["mission_carrierDoorAction0", localize "STR_Mission_Action_DoorLevel0", localize "STR_Mission_Action_DoorLevel0Desc", carrier_door_level_0],
  ["mission_carrierDoorActionMinus1", "[-1] Magazyn", "<t size='1.5'>Poziom -1</t><br/><t size='3'>Magazyn</t>", carrier_door_level_minus1],
  ["mission_carrierDoorActionMinus2", "[-2] Dok", "<t size='1.5'>Poziom -2</t><br/><t size='3'>Dok</t>", carrier_door_level_minus2]
] apply {
  _x params ["_name", "_text", "_desc", "_object"];
  [
    _name,
    _text,
    "",
    {
      params ["", "", "_params"];
      _params spawn {
        params ["_object", "_desc"];
        titleText ["", "BLACK OUT", 999];
        titleText ["", "BLACK FADED", 999];
        playSound "Doors";
        playSound "Doors";
        playSound "Doors";
        sleep 0.5;
        titleText [_desc, "BLACK FADED", -1, false, true];
        player setPosASL (getPosASL _object);
        sleep 0.25;
        titleFadeOut 2;
      };
    },
    {true},
    {},
    [_object, _desc]
  ] call ace_interact_menu_fnc_createAction
};

for "_i" from 1 to 9 do {
  private _lock = missionNamespace getVariable [format ["carrier_door_lock_%1", _i], objNull];
  if !(isNull _lock) then {
    [_lock, 0, [], _doorAction] call ace_interact_menu_fnc_addActionToObject;
    {
      [_lock, 0, ["mission_carrierDoorAction"], _x] call ace_interact_menu_fnc_addActionToObject;
    } forEach _doorActions;
  };
};

{
  _x params ["_panel", "_id"];

  private _panelAction = [
    "mission_carrierRampPanel",
    format ["Panel rampy #%1", _id],
    "a3\ui_f\data\igui\cfg\simpletasks\types\interact_ca.paa",
    compile format ['mission_ramp_dialog_rampId = "%1";createDialog "carrierRampDialog";', _id],
    {true},
    {},
    [],
    [-0.45, 0.2, 0.6]
  ] call ace_interact_menu_fnc_createAction;
  [_panel, 0, [], _panelAction] call ace_interact_menu_fnc_addActionToObject;
} forEach [
  [carrier_ramp_1_panel, 1],
  [carrier_ramp_2_panel, 2],
  [carrier_ramp_3_panel, 3]
];

private _briefingSlidesPanelAction = [
  "mission_briefingSlidesPanel",
  localize "STR_Mission_openBriefingSlidesPanel_Action",
  "a3\ui_f\data\igui\cfg\simpletasks\types\whiteboard_ca.paa",
  {createDialog "carrierBriefingSlidesDialog"},
  {true}
] call ace_interact_menu_fnc_createAction;
[carrier_briefing_panel, 0, [], _briefingSlidesPanelAction] call ace_interact_menu_fnc_addActionToObject;
