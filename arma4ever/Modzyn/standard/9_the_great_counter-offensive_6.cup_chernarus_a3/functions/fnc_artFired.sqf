#include "script_component.hpp"

#define COUNTER_FIRE_AREA 60

params ["_vehicle"];

if (GVAR(aliveArt) isEqualTo []) exitWith {
  //systemChat "Not adding new pos - no art alive";
};

if (["logicFlag_4002", true] call A4ES_fnc_isLogicFlag) exitWith {};

private _pos = getPos _vehicle;
private _newPos = true;

if ((count GVAR(counterArtPositions)) > 0) then {
  private _index = GVAR(counterArtPositions) findIf {(_x distance2D _pos) < COUNTER_FIRE_AREA};
  _newPos = _index == -1;
};

if !(_newPos) exitWith {
  //systemChat "Not adding new pos";
};

//systemChat "Adding new pos";

GVAR(counterArtPositions) pushBack _pos;

if ((random 1) < 0.5) exitWith {
  //systemChat "New pos - no response";
  _pos spawn {
    sleep 20;
    GVAR(counterArtPositions) deleteAt (GVAR(counterArtPositions) find _this);
  };
};

private _artVar = QGVAR(aliveArt);
private _eventName = QGVAR(doArtFire);
private _minCount = 3;

[_pos, _artVar, _minCount, _eventName] spawn {
  params ["_pos", "_artVar", "_minCount", "_eventName"];
  sleep (20 + (random 20));

  private _aliveArt = (missionNamespace getVariable [_artVar, []]) select {(alive _x) && {(crew _x) isNotEqualTo []}};
  missionNamespace setVariable [_artVar, _aliveArt];
  if (_aliveArt isEqualTo []) exitWith {
    GVAR(counterArtPositions) deleteAt (GVAR(counterArtPositions) find _pos);
  };

  private _count = (count _aliveArt) min _minCount;
  private _arts = +_aliveArt;
  private _guns = [];

  for "_i" from 1 to _count do {
    private _gun = selectRandom _arts;
    _arts deleteAt (_arts find _gun);
    _guns pushBack _gun;
  };

  //systemChat ("Counter art: " + (str _count) + " guns [" + _artVar + "]");

  {
    [_eventName, [_x, _pos], [_x]] call CBA_fnc_targetEvent;
    sleep (random 1);
  } forEach _guns;

  sleep 20;

  //systemChat "Pos removed";

  GVAR(counterArtPositions) deleteAt (GVAR(counterArtPositions) find _pos);
};
