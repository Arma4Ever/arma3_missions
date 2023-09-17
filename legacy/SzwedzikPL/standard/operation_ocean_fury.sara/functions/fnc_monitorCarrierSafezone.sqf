/*
  Author: SzwedzikPL
  Monitors player presence in carrier safezone and enables/disables safezone procetions
*/

if !(hasInterface) exitWith {};

sleep 5;

private _carrierHullPart = (getPos carrier_armory_area) nearestObject "Land_Carrier_01_hull_06_1_F";

while {alive player} do {
  if (player inArea carrier_safezone) then {
    if (isDamageAllowed player || isDamageAllowed (vehicle player)) then {
      player allowDamage false;
      (vehicle player) allowDamage false;
      if !(isMultiplayer) then {systemChat "damage disabled";};
    };
    if (player inArea carrier_armory_area) then {
      if (!(isNull _carrierHullPart) && {!(isObjectHidden _carrierHullPart)}) then {
        _carrierHullPart hideObject true;
        if !(isMultiplayer) then {systemChat "enter armory";};
      };
    } else {
      if (!(isNull _carrierHullPart) && {isObjectHidden _carrierHullPart}) then {
        _carrierHullPart hideObject false;
        if !(isMultiplayer) then {systemChat "exit armory";};
      };
    };
    sleep 0.5;
  } else {
    if (!(isDamageAllowed player) || !(isDamageAllowed (vehicle player))) then {
      player allowDamage true;
      (vehicle player) allowDamage true;
      if !(isMultiplayer) then {systemChat "damage enabled";};
    };
    sleep 1;
  };
};
