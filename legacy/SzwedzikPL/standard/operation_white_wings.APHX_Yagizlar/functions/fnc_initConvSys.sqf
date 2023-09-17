#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Inits conversation system between group members
 */

params ["_entity"];

private _group = _entity;
if (_entity isEqualType objNull) then {
  _group = group _entity;
};

_group spawn {
  private _group = _this;
  if (_group getVariable [QGVAR(convSysInited), false]) exitWith {};
  _group setVariable [QGVAR(convSysInited), true, true];

  if !(_group call FUNC(isValidConvGroup)) exitWith {};

  private _voices = ["male01tk", "male02tk", "male03tk", "male04tk", "male05tk"];

  {
    if (_voices isEqualTo []) exitWith {};
    private _voice = _voices deleteAt (floor (random (count _voices)));
    _x setVariable [QGVAR(convVoice), _voice];
  } forEach (units _group);

  while {_group call FUNC(isValidConvGroup)} do {
    waitUntil {
      sleep 5;
      private _leader = leader _group;
      (simulationEnabled _leader) && {
        (_leader nearEntities ["B_recon_F", 200]) isNotEqualTo []
      }
    };
    if !(_group call FUNC(isValidConvGroup)) exitWith {};

    if (is3DENPreview) then {systemChat str ["resume conv sys", _group];};
    private _lastSpeaker = objNull;
    private _lineCount = 0;

    while {
      (simulationEnabled (leader _group)) && {
        ((leader _group) nearEntities ["B_recon_F", 200]) isNotEqualTo []
      }
    } do {
      if !(_group call FUNC(isValidConvGroup)) exitWith {};

      private _unit = selectRandom ((units _group) - [_lastSpeaker]);
      _lastSpeaker = _unit;
      private _sound = format [
        QGVAR(%1_line_%2),
        _unit getVariable [QGVAR(convVoice), "male01tk"],
        ceil (random 31)
      ];

      if (is3DENPreview) then {systemChat str [_unit, _sound];};

      private _source = _unit say3D _sound;
      [QGVAR(convSay3D), [_unit, _sound]] call CBA_fnc_globalEvent;
      _lineCount = _lineCount + 1;

      waitUntil {
        sleep 1;
        (isNull _source) || {!(alive _unit)} || {!(_group call FUNC(isValidConvGroup))}
      };

      if !(isNull _source) then {
        deleteVehicle _source;
        [QGVAR(convStopSay3D), _unit] call CBA_fnc_globalEvent;
      };

      if !(_group call FUNC(isValidConvGroup)) exitWith {};

      sleep (random 3);
      if (((random 4) < 1) && {_lineCount > 2}) then {
        sleep (random 12);
        _lineCount = 0;

        if (is3DENPreview) then {systemChat str ["mid pause conv sys", _group];};
      };
    };

    if !(_group call FUNC(isValidConvGroup)) exitWith {};

    if (is3DENPreview) then {systemChat str ["pause conv sys", _group];};
  };

  if (is3DENPreview) then {systemChat str ["end conv sys", _group];};
};
