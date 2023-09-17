/***********************************************************************
    XEH_preInit.sqf
    Poniższy kod wykona się na serwerze oraz u każdego gracza przed rozpoczęciem wczytywania obiektów misji
************************************************************************/

#define PATH(fncName) functions\fnc##_##fncName.sqf
#define PREP(fncName) mission##_##fnc##_##fncName = compileFinal preprocessFileLineNumbers #PATH(fncName)

PREP(intro);

if (isServer) then {
  ["mission_takeFlag", {
    params ["_flag"];
    if !(isServer) exitWith {};
    if (_flag getVariable ["mission_flagTaken", false]) exitWith {};
    _flag setVariable ["mission_flagTaken", true, true];
    _flag setFlagTexture "uk3cb_factions\addons\uk3cb_factions_tka\flag\tka_flag_co.paa";
    private _pos = getPos _flag;
    private _marker = createMarker [
      (format ["marker_%1_flag", _flag call BIS_fnc_netId]),
      _pos
    ];
    _marker setMarkerType "UK3CB_Marker_TKA";
    _marker setMarkerSize [0.75, 0.75];
    _marker setMarkerPos _pos;
  }] call CBA_fnc_addEventHandler;

  ["ace_explosives_detonate", {
    params ["_unit", "_explosive", "_delay"];
    private _type = toLower (typeOf _explosive);
    if !(_type in ["democharge_remote_ammo", "satchelcharge_remote_ammo"]) exitWith {};
    private _range = [15, 7.5] select (_type isEqualTo "democharge_remote_ammo");
    private _barricades = nearestObjects [_explosive, ["Wire", "Land_Barricade_01_10m_F", "Land_Barricade_01_4m_F"], _range];
    if (_barricades isEqualTo []) exitWith {};
    if (_delay > 0.1) then {
      _delay = _delay - 0.1;
      [{
        params ["_explosive", "_barricades"];
        if (isNull _explosive) exitWith {};
          [{
            params ["_barricades"];
            {deleteVehicle _x} forEach _barricades;
          }, [_barricades], 0.25] call CBA_fnc_waitAndExecute;
      }, [_explosive, _barricades], _delay] call CBA_fnc_waitAndExecute;
    } else {
      [{
        params ["_barricades"];
        {deleteVehicle _x} forEach _barricades;
      }, [_barricades], 0.25] call CBA_fnc_waitAndExecute;
    };
  }] call CBA_fnc_addEventHandler;
};
