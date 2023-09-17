#include "script_component.hpp"

if ((!is3DENPreview) && {hasInterface}) exitWith {};

if (missionNamespace getVariable [QGVAR(shouldAttackPlayers), false]) exitWith {};
GVAR(shouldAttackPlayers) = true;

addMissionEventHandler ["EntityKilled", {
	params ["_unit"];
  if !(_unit isKindOf "CAManBase") exitWith {};

  private _group = group _unit;
  if !((side _group) isEqualTo east) exitWith {};

  private _player = _unit getVariable [QGVAR(attackPlayer), objNull];
  if !(isNull _player) then {
    private _attackers = _player getVariable [QGVAR(attackers), []];
    _attackers deleteAt (_attackers find _unit);
    _player setVariable [QGVAR(attackers), _attackers];
  };

  _group spawn {
    sleep 1;
    if (((units _this) select {alive _x}) isEqualTo []) then {
      deleteGroup _this;
    };
  };
}];

0 spawn {
  sleep 2;
  while {GVAR(shouldAttackPlayers)} do {
    private _players = (playableUnits + switchableUnits) select {alive _x};
    _players resize [GVAR(attackersCount), A4ES_HC_1];
    {
      private _player = _x;
      if (!(alive _player) || {_player getVariable ["ACE_isUnconscious", false]}) then {continue};
      private _pos = selectRandom GVAR(availablePositions);

      if (isNull _pos) exitWith {};

      _pos = getPosASL _pos;

      if (_pos isEqualTo []) exitWith {};

      if (_player distance _pos > GVAR(maxSpawnDistance)) then {continue};
      if (_player inArea [_pos, GVAR(minSpawnDistance), GVAR(minSpawnDistance), 45, false]) then {continue};

      private _attackers = (_player getVariable [QGVAR(attackers), []]) - [objNull];

      if ((count _attackers) < GVAR(playerQuota)) then {
        private _success = [_player, _pos] call FUNC(spawnAttacker);  
        sleep GVAR(attackLoopPlayer);
      };
    } forEach _players;

    sleep GVAR(attackCycleDelay)
  };
};

0 spawn {
  sleep 2;
  while {GVAR(shouldFilterAttackers)} do {
  private _players = (playableUnits + switchableUnits) select {alive _x};
    {
      if (_x getVariable [QGVAR(isAttacker), false]) then {
        if ((_players inAreaArray [getPos _x, GVAR(maxAttackerDistance), GVAR(maxAttackerDistance)]) isEqualTo []) then {
          _x setDamage 1;
        };
        sleep GVAR(filterLoopPlayer);
      };
    } forEach allUnits;
  sleep GVAR(filterCycleDelay)
  };
};

