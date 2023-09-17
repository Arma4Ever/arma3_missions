/***********************************************************************
    XEH_postInit.sqf
    Poniższy kod wykona się na serwerze oraz u każdego gracza po wczytaniu wszystkich elementów misji
************************************************************************/

if (hasInterface) then {
  0 spawn {
    sleep 1;
    private _flagAction = [
      "mission_takeFlag",
      localize "STR_Mission_Action_TakeFlag",
      "a3\ui_f\data\igui\cfg\simpletasks\types\interact_ca.paa",
      {
        [
          5,
          _target,
          {
            params ["_target"];
            if (_target getVariable ["mission_flagTaken", false]) exitWith {};
            ["mission_takeFlag", [_target]] call CBA_fnc_serverEvent;
            hintSilent localize "STR_Mission_Action_FlagTaken";
          },
          {},
          localize "STR_Mission_Action_TakingFlag"
        ] call ace_common_fnc_progressBar;
      },
      {
        !(_target getVariable ["mission_flagTaken", false])
      },
      {},
      [],
      [0.05, -0.385, -2.375],
      4
    ] call ace_interact_menu_fnc_createAction;
    private _flags = (getMissionLayerEntities "Flags") # 0;
    {
      [_x, 0, [], _flagAction] call ace_interact_menu_fnc_addActionToObject;
    } forEach _flags;

  };

  ["CBA_loadingScreenDone", {
    if (didJIP) exitWith {};
    [] spawn mission_fnc_intro;
  }] call CBA_fnc_addEventHandler;
};

if (isServer) then {
  0 spawn {
    sleep 9;
    private _data = call compile preprocessFileLineNumbers "scripts\data_map.sqf";
    private _lastUpdate = CBA_missionTime;
    private _count = count _data;
    private _counter = 0;
    {
      _x params ["_model", "_posWorld", "_vector"];
      private _object = createSimpleObject [_model, [0,0,0]];
      _object setPosWorld _posWorld;
      _object setVectorDirAndUp _vector;
      _counter = _counter + 1;
      if ((CBA_missionTime - _lastUpdate) > 0.98) then {
        missionNamespace setVariable ["mission_mapSpawn", [true, _counter, _count, false], true];
        _lastUpdate = CBA_missionTime;
      };
      sleep 0.01;
    } forEach _data;
    missionNamespace setVariable ["mission_mapSpawn", [true, _counter, _count, true], true];
  };
  0 spawn {
    while {true} do {
      {_x addCuratorPoints 1;} forEach allCurators;
      sleep 10;
    };
  };
};
