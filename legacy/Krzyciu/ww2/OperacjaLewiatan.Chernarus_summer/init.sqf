/***********************************************************************
	init.sqf
	Poniższy kod wykona się lokalnie u gracza oraz na serwerze w trakcie ładowania misji przez grę
************************************************************************/

//-- Twój kod --//
null = [] execVM "skrypty\paradropambient.sqf";
null = [] execVM "skrypty\paradrop.sqf";
customSkill = compile preprocessFileLineNumbers "skrypty\fn_customSkill.sqf";
intro = compile preprocessFileLineNumbers "skrypty\fn_intro.sqf";
ostrzalAA = compile preprocessFileLineNumbers "skrypty\fn_ostrzalAA.sqf";
parachute = compile preprocessFileLineNumbers "skrypty\fn_parachute.sqf";
plecakon = compile preprocessFileLineNumbers "skrypty\fn_plecakon.sqf";
ranga = compile preprocessFileLineNumbers "skrypty\fn_ranga.sqf";
skok1 = compile preprocessFileLineNumbers "skrypty\fn_skok1.sqf";
skok2 = compile preprocessFileLineNumbers "skrypty\fn_skok2.sqf";
skok3 = compile preprocessFileLineNumbers "skrypty\fn_skok3.sqf";

["CAManBase", "init", {
  params ["_unit"];

  _unit spawn {
    params ["_unit"];

    // Wait for modules stuff setup and proper network sync
    sleep 0.5;

    if !(local _unit) exitWith {};

    _unit setSkill ["aimingShake", 0.10];
    _unit setSkill ["aimingAccuracy", 0.10];
    _unit setSkill ["aimingSpeed", 0.20];
    _unit setSkill ["endurance", 1];
    _unit setSkill ["spotDistance", 1];
    _unit setSkill ["spotTime", 1];
    _unit setSkill ["courage", 1];
    _unit setSkill ["reloadSpeed",1];
    _unit setSkill ["commanding", 1];
  };
}, true, [], true] call CBA_fnc_addClassEventHandler;
