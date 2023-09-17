/*
  Author: SzwedzikPL
  Enables/Disables autonomus fleet defence
*/

private _vehicles = _this apply {typeOf vehicle _x};

if !(isMultiplayer) then {systemChat str _vehicles;};

if (!(_vehicles isEqualTo [])) then {
  // Exit if defences already enabled
  if (carrier_defence_enabled) exitWith {};
  carrier_defence_enabled = true;
  // Debug
  if !(isMultiplayer) then {systemChat "carrier_defence_enabled = true";};

  if !(carrier_defence_alarm) then {
    playSound3D [
      getMissionPath "data\carrier_sounds\alarm_defence.ogg",
      carrier_speaker,
      false,
      getPosASL carrier_speaker,
      4.9,
      1,
      1000
    ];
    carrier_defence_alarm = true;
    if !(isMultiplayer) then {systemChat "carrier_defence_alarm = true";};
  };
  0 spawn {
    sleep 6;
    for "_i" from 1 to 12 do {
      private _turret = missionNamespace getVariable [format ["fleet_static_aa_%1", _i], objNull];
      _turret enableAI "TARGET";
      _turret enableAI "AUTOTARGET";
      _turret enableAI "WEAPONAIM";
    };
    carrier_defence_alarm = false;
    if !(isMultiplayer) then {systemChat "carrier_defence_alarm = false";};
  };
} else {
  carrier_defence_enabled = false;
  if !(isMultiplayer) then {systemChat "carrier_defence_enabled = false";};
  for "_i" from 1 to 12 do {
    private _turret = missionNamespace getVariable [format ["fleet_static_aa_%1", _i], objNull];
    _turret disableAI "TARGET";
    _turret disableAI "AUTOTARGET";
    _turret disableAI "WEAPONAIM";
  };
};
