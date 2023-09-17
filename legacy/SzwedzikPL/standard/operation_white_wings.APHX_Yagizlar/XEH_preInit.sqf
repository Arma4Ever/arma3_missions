#include "script_component.hpp"

PREP(addPropToBuilding);
PREP(caveCollapseClient);
PREP(caveMove);
PREP(caveQuake);
PREP(caveQuakeSmall);
PREP(caveQuakeSmallServer);
PREP(checkBasePresence);
PREP(checkCavePresence);
PREP(checkGear);
PREP(checkLaptopPass);
PREP(checkUnitID);
PREP(depotKilled);
PREP(guiMessage);
PREP(initConvSys);
PREP(initSitDown);
PREP(isSpawnSafe);
PREP(isValidConvGroup);
PREP(lightningLocal);
PREP(moveToPlane);
PREP(openInputDialog);
PREP(removeGrenades);
PREP(rockDropClient);
PREP(rockDropServer);
PREP(workAnim);
PREP(zeusHQHint);

GVAR(basePresencePFH) = -1;
GVAR(caveCollapseSounds) = [];

if (is3DEN) then {
  0 call (compileScript ["scripts\hideObjects.sqf"]);
};

["CUP_MQ9_Base", "initPost", {
  params ["_uav"];
  _uav setCaptive true;
  _uav setCollisionLight false;
  _uav disableAI "LIGHTS";
  _uav disableAI "TARGET";
  _uav disableAI "AUTOTARGET";
  _uav disableAI "WEAPONAIM";
  _uav setUnitCombatMode "BLUE";
  {
    _x disableAI "LIGHTS";
    _x disableAI "TARGET";
    _x disableAI "AUTOTARGET";
    _x disableAI "WEAPONAIM";
    _x setUnitCombatMode "BLUE";
    (group _x) setCombatMode "BLUE";
  } forEach (crew _uav);
}, true, [], true] call CBA_fnc_addClassEventHandler;

[QGVAR(endMissionExfil), {
  "EndExfil" call BIS_fnc_endMission;
}] call CBA_fnc_addEventHandler;

[QGVAR(2hLater), {
  0 spawn {
    if (hasInterface && {(side (group player)) == west}) then {
      0 cutText [
        "",
        "BLACK FADED",
        -1,
        true,
        true
      ];
      ["a3\missions_f_epa\video\A_in2_two_hours_later.ogv"] spawn BIS_fnc_playVideo;
    };

    sleep 1;
    skipTime 2;

    // Move HQ to HQ room for mission command
    if (hasInterface && {player getVariable ["mission_isHQ", false]}) then {
      sleep 5;
      player setPos [4831.83, 4827.69, 0.950867];
      player setDir 269.217;
      sleep 1;
      0 cutText ["", "BLACK IN", -1];
    };
  };
}] call CBA_fnc_addEventHandler;

[QGVAR(setAware), {
  params ["_group"];
  _group setCombatMode "RED";
  _group setSpeedMode "FULL";
  _group setVariable ["lambs_danger_disableGroupAI", false, true];

  if ((combatBehaviour _group) == "SAFE") then {
    if (is3DENPreview) then {systemChat str ["setAware", _group];};
    _group setBehaviour "AWARE";
    _group setCombatBehaviour "AWARE";
    _group setSpeedMode "FULL";
  };
}] call CBA_fnc_addEventHandler;

[QGVAR(standUpGroup), {
  params ["_group"];
  {
    _x setUnitPos "UP";
  } forEach (units _group);
}] call CBA_fnc_addEventHandler;

[QGVAR(shout), {
  params ["_unit", "_id"];
  _unit say3D (format [QGVAR(shout_line_%1), _id]);
}] call CBA_fnc_addEventHandler;

[QGVAR(unitAnimSitDown), {
  params ["_unit"];
  _unit action ["sitDown", _unit];
}] call CBA_fnc_addEventHandler;

[QGVAR(unitAnimAction), {
  params ["_unit", "_action"];
  _unit playAction _action;
}] call CBA_fnc_addEventHandler;

[QGVAR(moveToPlane), {
  _this call FUNC(moveToPlane);
}] call CBA_fnc_addEventHandler;

if (hasInterface) then {
  [QGVAR(convSay3D), {
    params ["_unit", "_sound"];
    if (isServer) exitWith {};
    private _source = _unit say3D _sound;
    _unit setVariable [QGVAR(convSaySource), _source];
  }] call CBA_fnc_addEventHandler;

  [QGVAR(convStopSay3D), {
    params ["_unit"];
    if (isServer) exitWith {};
    deleteVehicle (_unit getVariable [QGVAR(convSaySource), objNull]);
  }] call CBA_fnc_addEventHandler;

  [QGVAR(resetC130Ambient), {
    if !(isNil QGVAR(C130AmbientSound)) then {
      deleteVehicle GVAR(C130AmbientSound);
    };
  }] call CBA_fnc_addEventHandler;

  [QGVAR(zeusLog), {
    if !(player getVariable ["a3cs_curator_isCurator", false]) exitWith {};
    playSound "hint";
    playSound "hint3";
    playSound "hint3";
    systemChat format ["[!!! ZEUS !!!] %1", _this];
    diag_log ["mission_zeusLog", _this];
  }] call CBA_fnc_addEventHandler;

  [QGVAR(HQHint), {
    if !(player getVariable [QGVAR(isHQ), false]) exitWith {};
    private _text = _this;
    if (isLocalized _text) then {
      _text = localize _text;
    };
    hint parseText _text;
    playSound "hint";
    playSound "hint";
  }] call CBA_fnc_addEventHandler;

  [QGVAR(planeTimeHint), {
    [QGVAR(zeusLog), format ["plane %1s", _this]] call CBA_fnc_localEvent;
    if !(player getVariable [QGVAR(isPLLeader), false]) exitWith {};

    if (_this == 120) exitWith {
      hint parseText ( LLSTRING(PlaneTimeHint_120) );
    };
    if (_this == 60) exitWith {
      hint parseText ( LLSTRING(PlaneTimeHint_60) );
      0 spawn {
        sleep 10;
        hintSilent "";
      };
    };
    if (_this == 15) exitWith {
      hint parseText ( LLSTRING(PlaneTimeHint_15) );
      0 spawn {
        sleep 10;
        hintSilent "";
      };
    };
  }] call CBA_fnc_addEventHandler;

  [QGVAR(smallQuake), {
    if !(player getVariable [QGVAR(inCaveArea), false]) exitWith {};
    0 spawn FUNC(caveQuakeSmall);
  }] call CBA_fnc_addEventHandler;

  [QGVAR(mainCollapseShake), {
    if !(player getVariable [QGVAR(inCaveArea), false]) exitWith {};
    1.1 spawn FUNC(caveQuake);
  }] call CBA_fnc_addEventHandler;

  [QGVAR(surfaceQuake), {
    if (
      (player getVariable [QGVAR(inCaveArea), false]) ||
      {player getVariable [QGVAR(isHQ), false]}
    ) exitWith {};

    0 spawn {
      playSound "Earthquake_01";
      sleep 1;
      addCamShake [0.5, 13, 200];
    };
  }] call CBA_fnc_addEventHandler;

  [QGVAR(caveCollapseInProgress), {
    if !(player getVariable [QGVAR(inCaveArea), false]) exitWith {};
    0 spawn FUNC(caveCollapseClient);
  }] call CBA_fnc_addEventHandler;

  [QGVAR(rockDrop), {
    if !(player getVariable [QGVAR(inCaveArea), false]) exitWith {};
    _this spawn FUNC(rockDropClient);
  }] call CBA_fnc_addEventHandler;

  ["ace_explosives_place", {
    params ["_explosive", "", "", "_unit"];
    if !((_unit == player) && {player getVariable [QGVAR(inCaveArea), false]}) exitWith {};
    hint LLSTRING(Msg_ExpPlaceCave);
  }] call CBA_fnc_addEventHandler;

  [QGVAR(yellowstoneTalk), {
    if (
      (player getVariable [QGVAR(inCaveArea), false]) ||
      {player getVariable [QGVAR(isHQ), false]}
    ) exitWith {};
    0 spawn (compileScript ["scripts\yellowstoneTalk.sqf"]);
  }] call CBA_fnc_addEventHandler;

  [QGVAR(planeLightning), {
    if !(((getPosATL player) # 2) > 3500) exitWith {};
    _this spawn FUNC(lightningLocal);
  }] call CBA_fnc_addEventHandler;

  [QGVAR(mainCollapseLocal), {
    if !(player getVariable [QGVAR(inCaveArea), false]) exitWith {};
    0 spawn {
      private _objectTemp = "Land_R_rock_general2" createVehicleLocal [496.15, 16.6382, 0];
      _objectTemp setPosWorld [114.709, 11.193, 516.626];
      _objectTemp setVectorDirAndUp [[0.992994, 0.11814, -0.00249276], [0.00741744, -0.0412639, 0.999121]];
      sleep 30;
      deleteVehicle _objectTemp;
    };
  }] call CBA_fnc_addEventHandler;
};

if (isServer) then {
  GVAR(baseExtraObjects) = [];
  mission_main_collapse_pass = false;

  [QGVAR(switchDynSim), {
    params ["_entity", "_state"];
    if (_entity isKindOf "CAManBase") then {
      (group _entity) enableDynamicSimulation _state;
    } else {
      _entity enableDynamicSimulation _state;
    };
  }] call CBA_fnc_addEventHandler;

  [QGVAR(startExfil), {
    if (missionNamespace getVariable [QGVAR(exfilStarted), false]) exitWith {};
    0 call (compileScript ["scripts\startExfil.sqf"]);
  }] call CBA_fnc_addEventHandler;

  [QGVAR(initPlaneSequence), {
    if (missionNamespace getVariable [QGVAR(planeSequenceStarted), false]) exitWith {};
    0 spawn (compileScript ["scripts\planeSequence.sqf"]);
  }] call CBA_fnc_addEventHandler;

  [QGVAR(soundAlarm), {
    if (missionNamespace getVariable [QGVAR(alarmSounded), false]) exitWith {};
    0 spawn (compileScript ["scripts\soundAlarm.sqf"]);
  }] call CBA_fnc_addEventHandler;

  [QGVAR(depot1Destroyed), {
    if (missionNamespace getVariable [QGVAR(depotOneDestroyed), false]) exitWith {};
    0 spawn (compileScript ["scripts\depotOneDestroyed.sqf"]);
  }] call CBA_fnc_addEventHandler;

  [QGVAR(depot2Destroyed), {
    if (missionNamespace getVariable [QGVAR(depotTwoDestroyed), false]) exitWith {};
    0 spawn (compileScript ["scripts\depotTwoDestroyed.sqf"]);
  }] call CBA_fnc_addEventHandler;

  [QGVAR(laptopT1Checked), {
    if (missionNamespace getVariable [QGVAR(laptopT1Checked), false]) exitWith {};
    0 spawn (compileScript ["scripts\laptopT1Checked.sqf"]);
  }] call CBA_fnc_addEventHandler;

  [QGVAR(laptopT2Checked), {
    if (missionNamespace getVariable [QGVAR(laptopT2Checked), false]) exitWith {};
    0 spawn (compileScript ["scripts\laptopT2Checked.sqf"]);
  }] call CBA_fnc_addEventHandler;

  [QGVAR(yellowstoneIdChecked), {
    if (missionNamespace getVariable [QGVAR(yellowstoneIdChecked), false]) exitWith {};
    missionNamespace setVariable [QGVAR(yellowstoneIdChecked), true, true];
    0 spawn {
      sleep 4;
      [QGVAR(yellowstoneTalk), 0] call CBA_fnc_globalEvent;
      sleep 17;
      private _yellowstone = missionNamespace getVariable ["mission_unit_yellowstone", objNull];
      if !(alive _yellowstone) exitWith {};
      _yellowstone setDamage 1;
    };
  }] call CBA_fnc_addEventHandler;

  [QGVAR(mainCollapse), {
    if (missionNamespace getVariable [QGVAR(mainCollapsed), false]) exitWith {};
    0 spawn (compileScript ["scripts\collapseTunnel.sqf"]);
  }] call CBA_fnc_addEventHandler;
};
