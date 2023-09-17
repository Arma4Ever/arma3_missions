/*
  Author: SzwedzikPL
  Resupplies ships in resupply zone
*/

{
  if (_x isKindOf "vurtual_destroyer" && {local _x}) then {
    _x setVehicleAmmo 1;
    _x setFuel 1;
    _x setDamage 0;
  };

  if (hasInterface && {(objectParent player) isEqualTo _x}) then {
    hint localize "STR_Mission_Info_ShipReloaded";
  };
} forEach _this;
