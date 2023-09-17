/***********************************************************************
    XEH_preInit.sqf
    Poniższy kod wykona się na serwerze oraz u każdego gracza przed rozpoczęciem wczytywania obiektów misji
************************************************************************/

#define PATH(fncName) functions\fnc##_##fncName.sqf
#define PREP(fncName) mission##_##fnc##_##fncName = compileFinal preprocessFileLineNumbers #PATH(fncName)

PREP(addCarrierInteractions);
PREP(addGroundTarget);
PREP(addMissionInteractions);
PREP(addVehicleInteractions);
PREP(carrierAttachVehicle);
PREP(carrierCanAttachVehicle);
PREP(carrierDetachVehicle);
PREP(carrierPlaySound);
PREP(carrierRampHide);
PREP(carrierRampSpawn);
PREP(carrierUnstuck);
PREP(fleetDefence);
PREP(getRampVehicles);
PREP(handleBuildingChanged);
PREP(initBriefingSlidesDialog);
PREP(initRampDialog);
PREP(initSoundsDialog);
PREP(intro);
PREP(monitorCarrierSafezone);
PREP(monitorShipsPositions);
PREP(packVehicle);
PREP(resupplyShips);
PREP(saveInQuarters);

mission_ramp_dialog = false;
mission_ramp_dialog_rampId = -1;
mission_quad_attachableVehicle = objNull;
mission_playing_tvstudio_director = false;
mission_playing_tvstudio_ambasador = false;
mission_playing_arcadia_hospital = false;
mission_playing_chantico_garages = false;

mission_carrier_supportedVehicles = [
  "b_plane_fighter_01_f",
  "b_plane_fighter_01_stealth_f",
  "b_uav_05_f",
  "rhs_ah1z",
  "rhsusf_ch53e_usmc",
  "rhs_uh1y_ffar"
];

["mission_studio_director", {
  0 spawn {
    if (mission_playing_tvstudio_director) exitWith {};
    mission_playing_tvstudio_director = true;
    if (isServer) then {
      missionNamespace setVariable ["mission_studio_door_unlocked", true, true];
      playSound3D [
        getMissionPath "data\dubbing\studio_director.ogg",
        tvstation_director,
        true,
        getPosASL tvstation_director,
        4.5,
        1,
        70
      ];
    };
    if (hasInterface) then {
      if ((player distance tvstation_director) < 25) then {
        [
        	["Dyrektor studia", localize "STR_Mission_StudioDirectorDubbing_1", 0],
          ["Dyrektor studia", localize "STR_Mission_StudioDirectorDubbing_2", 2.7],
        	["Dyrektor studia", localize "STR_Mission_StudioDirectorDubbing_3", 8],
        	["Dyrektor studia", localize "STR_Mission_StudioDirectorDubbing_4", 11]
        ] spawn BIS_fnc_EXP_camp_playSubtitles;
      };
    };
    tvstation_director switchMove "AmovPercMstpSnonWnonDnon_AmovPercMstpSsurWnonDnon";
    sleep 5.5;
    tvstation_director switchMove "AinvPercMstpSnonWnonDnon_G01";
    sleep 7;
    tvstation_director switchMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
    tvstation_director allowDamage true;
  };
}] call CBA_fnc_addEventHandler;

["mission_studio_ambasador", {
  0 spawn {
    if (mission_playing_tvstudio_ambasador) exitWith {};
    mission_playing_tvstudio_ambasador = true;
    if (isServer) then {
      playSound3D [
        getMissionPath "data\dubbing\studio_ambasador.ogg",
        tvstudio_ambasador,
        true,
        getPosASL tvstudio_ambasador,
        4.5,
        1,
        70
      ];
    };
    if (hasInterface) then {
      if ((player distance tvstudio_ambasador) < 25) then {
        [
        	["Ambasador Morris", localize "STR_Mission_AmbasadorDubbing_1", 0]
        ] spawn BIS_fnc_EXP_camp_playSubtitles;
      };
    };
    sleep 4;
    tvstudio_ambasador allowDamage true;
  };
}] call CBA_fnc_addEventHandler;

["mission_arcadia_hospital", {
  0 spawn {
    if (mission_playing_arcadia_hospital) exitWith {};
    mission_playing_arcadia_hospital = true;
    if (isServer) then {
      playSound3D [
        getMissionPath "data\dubbing\arcadia_civ_hospital.ogg",
        arcadia_civ_hospital,
        true,
        getPosASL arcadia_civ_hospital,
        4.5,
        1,
        70
      ];
    };
    if (hasInterface) then {
      if ((player distance arcadia_civ_hospital) < 25) then {
        [
        	["Cywil", localize "STR_Mission_ArcadiaCivDubbing_1", 0],
          ["Cywil", localize "STR_Mission_ArcadiaCivDubbing_2", 4],
          ["Cywil", localize "STR_Mission_ArcadiaCivDubbing_3", 7],
          ["Cywil", localize "STR_Mission_ArcadiaCivDubbing_4", 12]
        ] spawn BIS_fnc_EXP_camp_playSubtitles;
      };
    };
    sleep 4;
    arcadia_civ_hospital allowDamage true;
  };
}] call CBA_fnc_addEventHandler;

["mission_chantico_garages", {
  0 spawn {
    if (mission_playing_chantico_garages) exitWith {};
    mission_playing_chantico_garages = true;
    if (isServer) then {
      "marker_balmopan_garages" setMarkerType "hd_unknown";
      playSound3D [
        getMissionPath "data\dubbing\chantico_civ_garages.ogg",
        chantico_civ_garages,
        true,
        getPosASL chantico_civ_garages,
        4.5,
        1,
        70
      ];
    };
    if (hasInterface) then {
      if ((player distance chantico_civ_garages) < 25) then {
        [
        	["Cywil", localize "STR_Mission_ChanticoCivDubbing_1", 0],
          ["Cywil", localize "STR_Mission_ChanticoCivDubbing_2", 2],
          ["Cywil", localize "STR_Mission_ChanticoCivDubbing_3", 4.5],
          ["Cywil", localize "STR_Mission_ChanticoCivDubbing_4", 9]
        ] spawn BIS_fnc_EXP_camp_playSubtitles;
      };
    };
    sleep 4;
    chantico_civ_garages allowDamage true;
  };
}] call CBA_fnc_addEventHandler;

if (isServer) then {
  carrier_defence_enabled = false;
  carrier_defence_alarm = false;

  ["mission_carrier_ramp_spawn", {
    if !(isServer) exitWith {};
    _this spawn mission_fnc_carrierRampSpawn;
  }] call CBA_fnc_addEventHandler;

  ["mission_carrier_ramp_hide", {
    if !(isServer) exitWith {};
    _this spawn mission_fnc_carrierRampHide;
  }] call CBA_fnc_addEventHandler;

  ["mission_carrier_playSound", {
    if !(isServer) exitWith {};
    _this spawn mission_fnc_carrierPlaySound;
  }] call CBA_fnc_addEventHandler;

  ["mission_carrier_saveInQuarters", {
    if !(isServer) exitWith {};
    _this call mission_fnc_saveInQuarters;
  }] call CBA_fnc_addEventHandler;
};
