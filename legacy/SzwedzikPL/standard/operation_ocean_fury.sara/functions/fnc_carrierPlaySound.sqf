/*
  Author: SzwedzikPL
  Plays user controlled carrier sounds
*/

params ["_sound"];

private _file = "";
private _duration = 0;

if !(carrier_speaker getVariable ["carrier_playingSound", false]) then {
  if (_sound isEqualTo "clear_deck") exitWith {
    _file = "alarm_clear_deck";
    _duration = 6;
  };
  if (_sound isEqualTo "deck_emergency") exitWith {
    _file = "alarm_deck_emergency";
    _duration = 3;
  };
  if (_sound isEqualTo "deck_emergency_drill") exitWith {
    _file = "drill_deck_emergency";
    _duration = 5;
  };
  if (_sound isEqualTo "clear_deck_drill") exitWith {
    _file = "drill_clear_deck";
    _duration = 9;
  };
  if (_sound isEqualTo "air_defence_drill") exitWith {
    _file = "drill_defence";
    _duration = 9;
  };
  if (_sound isEqualTo "briefing_seal_team") exitWith {
    _file = "msg_briefing_seal_team";
    _duration = 5;
  };
  if (_sound isEqualTo "briefing_alpha") exitWith {
    _file = "msg_briefing_alpha";
    _duration = 4;
  };
  if (_sound isEqualTo "briefing_bravo") exitWith {
    _file = "msg_briefing_bravo";
    _duration = 5;
  };
  if (_sound isEqualTo "briefing_all_oficers") exitWith {
    _file = "msg_briefing_all_oficers";
    _duration = 5;
  };
  if (_sound isEqualTo "briefing_all_pilots") exitWith {
    _file = "msg_briefing_all_pilots";
    _duration = 5;
  };
  if (_sound isEqualTo "deck_seal_team") exitWith {
    _file = "msg_deck_seal_team";
    _duration = 4;
  };
  if (_sound isEqualTo "deck_alpha") exitWith {
    _file = "msg_deck_alpha";
    _duration = 4;
  };
  if (_sound isEqualTo "deck_bravo") exitWith {
    _file = "msg_deck_bravo";
    _duration = 3;
  };
  if (_sound isEqualTo "pilot_eagle_1") exitWith {
    _file = "msg_pilot_eagle1";
    _duration = 5;
  };
  if (_sound isEqualTo "pilot_eagle_2") exitWith {
    _file = "msg_pilot_eagle2";
    _duration = 5;
  };
  if (_sound isEqualTo "pilot_hawk_1") exitWith {
    _file = "msg_pilot_hawk1";
    _duration = 5;
  };
  if (_sound isEqualTo "pilot_hawk_2") exitWith {
    _file = "msg_pilot_hawk2";
    _duration = 5;
  };
  if (_sound isEqualTo "pilot_raven_1") exitWith {
    _file = "msg_pilot_raven1";
    _duration = 5;
  };
  if (_sound isEqualTo "pilot_raven_2") exitWith {
    _file = "msg_pilot_raven2";
    _duration = 6;
  };
  if (_sound isEqualTo "pilot_falcon_1") exitWith {
    _file = "msg_pilot_falcon1";
    _duration = 5;
  };
  if (_sound isEqualTo "pilot_falcon_2") exitWith {
    _file = "msg_pilot_falcon2";
    _duration = 5;
  };
  if (_sound isEqualTo "pilot_cobra_1") exitWith {
    _file = "msg_pilot_cobra1";
    _duration = 5;
  };
  if (_sound isEqualTo "pilot_cobra_2") exitWith {
    _file = "msg_pilot_cobra2";
    _duration = 4;
  };
  if (_sound isEqualTo "pilot_big_foot") exitWith {
    _file = "msg_pilot_bigfoot";
    _duration = 5;
  };
};

if (_file isEqualTo "") exitWith {};
// This is unscheduled env - double check to be sure we didn't sleep in exec
if (carrier_speaker getVariable ["carrier_playingSound", false]) exitWith {};
carrier_speaker setVariable ["carrier_playingSound", true];

playSound3D [
  getMissionPath format ["data\carrier_sounds\%1.ogg", _file],
  carrier_speaker,
  false,
  getPosASL carrier_speaker,
  4.9,
  1,
  1000
];

sleep _duration;
carrier_speaker setVariable ["carrier_playingSound", false];
