#include "script_component.hpp"
#include "\a3\ui_f\hpp\defineDIKCodes.inc"

/*
 * XEH_postInit.sqf
 * Poniższy kod wykona się po starcie misji, gdy wykonają się już pozostałe inity.
 * Dokumentacja: https://community.bistudio.com/wiki/Arma_3:_Functions_Library#Pre_and_Post_Init
 */

if (hasInterface) then {
  // Briefing
  #include "briefing.hpp"

  // Intro
  ["CBA_loadingScreenDone", {
    if (didJIP) exitWith {};
    0 spawn FUNC(intro);
  }] call CBA_fnc_addEventHandler;
};

["UK3CB_CW_US_B_LATE_M109", "fired", {
  params ["_unit", "_weapon", "", "", "_ammo", "", "_projectile"];
  if (
    !(local _unit) ||
    {_weapon != "rhs_weap_m284"} ||
    {GVAR(lastArtShot) == _projectile}
  ) exitWith {};
  GVAR(lastArtShot) = _projectile;
  //systemChat str ["shot", _ammo, _projectile];
  [QGVAR(artilleryFired), _unit] call CBA_fnc_serverEvent;
  [QGVAR(countArtShot), _ammo] call CBA_fnc_serverEvent;
}, false, [], false] call CBA_fnc_addClassEventHandler;

// Kod wykonywany lokalnie u gracza, za każdym razem gdy dołączy do gry
if (hasInterface) then {
	// City names
	["zelenogorsk", "Krzywy Rog"] spawn FUNC(changeCityName);
	["drozhino", "Radushne"] spawn FUNC(changeCityName);
	["sosnovka", "Shyroke"] spawn FUNC(changeCityName);
	["myshkino", "Zelene Pole"] spawn FUNC(changeCityName);
	["pustoshka", "Sofijiwka"] spawn FUNC(changeCityName);
	["vybor", "Liubymivka"] spawn FUNC(changeCityName);
	["pulkovo", "Vakulove"] spawn FUNC(changeCityName);
	["pogorevka", "Mykołajiwka"] spawn FUNC(changeCityName);
	["rogovo", "Roztannya"] spawn FUNC(changeCityName);
	["bogtyrka", "Savro"] spawn FUNC(changeCityName);
	["kabanino", "Volodymyrivka"] spawn FUNC(changeCityName);
	["starySobor", "Preobrazhenka"] spawn FUNC(changeCityName);
	["nowySobor", "Bereznuvativka"] spawn FUNC(changeCityName);
	["vyshnoye", "Sviatovasylivka"] spawn FUNC(changeCityName);
	["nadezhdino", "Druzhelyubivka"] spawn FUNC(changeCityName);
	["zelenogorskRail", "Krzywy Rog Railroad"] spawn FUNC(changeCityName);

	["[Prosty Komputer Arty]", QGVAR(openComputer), LLSTRING(Action_OpenComputer), {
		// Condition: canInteract
		if (player getVariable ["isArtGunner", false]) then {
		createDialog QGVAR(GUI_TargetMenu);
		};
	}, {}, [DIK_P, [false, false, false]]] call CBA_fnc_addKeybind;
};

// Kod wykonywany wyłącznie na serwerze - wykonuje się tylko raz, na starcie misji
if (isServer) then {
	// Borders
	["ally"] spawn FUNC(drawPolyline);
	["enemy"] spawn FUNC(drawPolyline);

	["rhs_2b14_82mm_msv", "initPost", {
		params ["_unit"];
		GVAR(aliveArt) pushBackUnique _unit;
  	}, false, [], true] call CBA_fnc_addClassEventHandler;
};
