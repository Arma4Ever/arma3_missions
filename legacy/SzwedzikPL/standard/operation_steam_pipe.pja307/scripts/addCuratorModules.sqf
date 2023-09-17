#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Adds curator modules
 */

if !(hasInterface) exitWith {};

["- MISJA: Funkcje", "Base cleanup", {
  if (missionNamespace getVariable [QGVAR(cleanupEnabled), false]) exitWith {};
  ["Base cleanup?", [], {
    if (missionNamespace getVariable [QGVAR(cleanupEnabled), false]) exitWith {};
    [QGVAR(baseCleanup), 0] call CBA_fnc_serverEvent;
  }, {}, []] call zen_dialog_fnc_create;
}] call zen_custom_modules_fnc_register;

["- MISJA: Funkcje", "Brief cleanup", {
  if (missionNamespace getVariable [QGVAR(briefDisabled), false]) exitWith {};
  ["Brief cleanup?", [], {
    if (missionNamespace getVariable [QGVAR(briefDisabled), false]) exitWith {};
    missionNamespace setVariable [QGVAR(briefDisabled), true, true];
    deleteVehicle (missionNamespace getVariable ["mission_brief_ctrl", objNull]);
    deleteVehicle (missionNamespace getVariable ["mission_brief_obj1", objNull]);
    deleteVehicle (missionNamespace getVariable ["mission_brief_obj2", objNull]);
    deleteVehicle (missionNamespace getVariable ["mission_brief_obj3", objNull]);
    (missionNamespace getVariable ["mission_brief_screen", objNull]) setObjectTextureGlobal [0, "data\slides\slide_op_stat.paa"];
  }, {}, []] call zen_dialog_fnc_create;
}] call zen_custom_modules_fnc_register;

["- MISJA: Funkcje", "Wooden tanks cleanup", {
  if (missionNamespace getVariable [QGVAR(wtCleanup), false]) exitWith {};
  ["Wooden tanks cleanup?", [], {
    if (missionNamespace getVariable [QGVAR(wtCleanup), false]) exitWith {};
    [QGVAR(wtCleanup), 0] call CBA_fnc_serverEvent;
  }, {}, []] call zen_dialog_fnc_create;
}] call zen_custom_modules_fnc_register;

["- MISJA: Funkcje", "Wylacz dyn sim", {
  params ["", "_target"];
  if (isNull _target) exitWith {};
  [QGVAR(disableDynSim), _target] call CBA_fnc_serverEvent;
}] call zen_custom_modules_fnc_register;

["- MISJA: Funkcje", "Reveal", {
  params ["", "_target"];
  if (isNull _target) exitWith {};
  [QGVAR(revealAll), _target] call CBA_fnc_globalEvent;
}] call zen_custom_modules_fnc_register;

["- MISJA: Funkcje", "Wlacz AI NVG", {
  ["Wlaczyc AI NVG?", [], {
    [QGVAR(enableNVG), 0] call CBA_fnc_serverEvent;
  }, {}, []] call zen_dialog_fnc_create;
}] call zen_custom_modules_fnc_register;

["- MISJA: Funkcje", "Detonuj Site", {
  ["Detonowac site?", [], {
    [QGVAR(detonateSite), 0] call CBA_fnc_globalEvent;
  }, {}, []] call zen_dialog_fnc_create;
}] call zen_custom_modules_fnc_register;

["- MISJA: Funkcje", "Wyczysc Site", {
  ["Wyczyscic site?", [], {
    [QGVAR(cleanSite), 0] call CBA_fnc_globalEvent;
  }, {}, []] call zen_dialog_fnc_create;
}] call zen_custom_modules_fnc_register;

["- MISJA: Funkcje", "Detonuj IEDy", {
  ["Detonowac IEDy?", [], {
    [QGVAR(detonateIEDs), 0] call CBA_fnc_globalEvent;
  }, {}, []] call zen_dialog_fnc_create;
}] call zen_custom_modules_fnc_register;

["- MISJA: Funkcje", "Okrzyk", {
  params ["", "_target"];
  if (isNull _target) exitWith {};

  private _file = selectRandom [
    "cheeringe_1.ogg",
    "cheeringe_2.ogg",
    "cheeringe_3.ogg",
    "cheeringe_4.ogg",
    "cheeringe_5.ogg",
    "combatgenerice_1.ogg",
    "combatgenerice_2.ogg",
    "combatgenerice_3.ogg",
    "combatgenerice_4.ogg",
    "contacte_1.ogg",
    "contacte_2.ogg",
    "contacte_3.ogg",
    "coveringe_1.ogg",
    "coveringe_2.ogg",
    "coveringe_3.ogg",
    "coveringe_4.ogg",
    "coveringe_5.ogg",
    "coveringe_6.ogg",
    "coveringe_7.ogg",
    "covermee_1.ogg",
    "covermee_2.ogg",
    "covermee_3.ogg",
    "covermee_4.ogg",
    "endangerede_1.ogg",
    "endangerede_2.ogg",
    "endangerede_3.ogg",
    "incominggrenadee_1.ogg",
    "incominggrenadee_2.ogg",
    "incominggrenadee_3.ogg",
    "reloadinge_1.ogg",
    "reloadinge_2.ogg",
    "reloadinge_3.ogg",
    "reloadinge_4.ogg",
    "reloadinge_5.ogg",
    "reloadinge_6.ogg",
    "reloadinge_7.ogg",
    "screaminge_1.ogg",
    "screaminge_2.ogg",
    "screaminge_3.ogg",
    "screaminge_4.ogg",
    "suppressinge_1.ogg",
    "suppressinge_2.ogg",
    "suppressinge_3.ogg",
    "suppressinge_4.ogg",
    "throwinggrenadee_1.ogg",
    "throwinggrenadee_2.ogg",
    "throwinggrenadee_3.ogg",
    "throwingsmokee_1.ogg",
    "throwingsmokee_2.ogg",
    "underfiree_1.ogg",
    "underfiree_2.ogg",
    "underfiree_3.ogg",
    "underfiree_4.ogg",
    "underfiree_5.ogg",
    "underfiree_6.ogg",
    "witnesskillede_1.ogg",
    "witnesskillede_2.ogg",
    "witnesskillede_3.ogg"
  ];
  playSound3D ["x\cfp\addons\protocols\Male01ACK\RadioProtocolAckbar\combatengage\200_combatshouts\" + _file, _target, false, getPosASL _target, 5, 1, 150];
}] call zen_custom_modules_fnc_register;

["- MISJA: Zadania", "0. Dodaj zniszczenie zestrzelonych wrakow", {
  ["Dodac zniszczenie zestrzelonych wrakow?", [], {
    [QGVAR(addWrecksTask), 0] call CBA_fnc_serverEvent;
  }, {}, []] call zen_dialog_fnc_create;
}] call zen_custom_modules_fnc_register;

["- MISJA: Zadania", "1.1 Zalicz ewakuacje Henrego", {
  ["Zaliczyc ewakuacje Henrego?", [], {
    [QGVAR(henryTaskResult), true] call CBA_fnc_serverEvent;
  }, {}, []] call zen_dialog_fnc_create;
}] call zen_custom_modules_fnc_register;
["- MISJA: Zadania", "1.2 Oblej ewakuacje Henrego", {
  ["Oblac ewakuacje Henrego?", [], {
    [QGVAR(henryTaskResult), false] call CBA_fnc_serverEvent;
  }, {}, []] call zen_dialog_fnc_create;
}] call zen_custom_modules_fnc_register;

["- MISJA: Zadania", "2.1. Zalicz ewakuacje ciala Henrego", {
  ["Zaliczyc ewakuacje ciala Henrego?", [], {
    [QGVAR(henryBodyTaskResult), true] call CBA_fnc_serverEvent;
  }, {}, []] call zen_dialog_fnc_create;
}] call zen_custom_modules_fnc_register;
["- MISJA: Zadania", "2.2. Oblej ewakuacje ciala Henrego", {
  ["Oblac ewakuacje ciala Henrego?", [], {
    [QGVAR(henryBodyTaskResult), false] call CBA_fnc_serverEvent;
  }, {}, []] call zen_dialog_fnc_create;
}] call zen_custom_modules_fnc_register;

["- MISJA: Zadania", "3.1. Zalicz wszyscy wracaja do domu", {
  ["Zaliczyc wszyscy wracaja do domu?", [], {
    [QGVAR(bodiesTaskResult), true] call CBA_fnc_serverEvent;
  }, {}, []] call zen_dialog_fnc_create;
}] call zen_custom_modules_fnc_register;
["- MISJA: Zadania", "3.2. Oblej wszyscy wracaja do domu", {
  ["Oblac wszyscy wracaja do domu?", [], {
    [QGVAR(bodiesTaskResult), false] call CBA_fnc_serverEvent;
  }, {}, []] call zen_dialog_fnc_create;
}] call zen_custom_modules_fnc_register;

["- MISJA: Zadania", "4.1. Zalicz zniszczenie zestrzelonych wrakow", {
  ["Zaliczyc zniszczenie zestrzelonych wrakow?", [], {
    [QGVAR(wrecksTaskResult), true] call CBA_fnc_serverEvent;
  }, {}, []] call zen_dialog_fnc_create;
}] call zen_custom_modules_fnc_register;
["- MISJA: Zadania", "4.2. Oblej zniszczenie zestrzelonych wrakow", {
  ["Oblac zniszczenie zestrzelonych wrakow?", [], {
    [QGVAR(wrecksTaskResult), false] call CBA_fnc_serverEvent;
  }, {}, []] call zen_dialog_fnc_create;
}] call zen_custom_modules_fnc_register;
