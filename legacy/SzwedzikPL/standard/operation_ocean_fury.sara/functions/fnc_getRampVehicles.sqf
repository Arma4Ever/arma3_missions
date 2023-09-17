/*
  Author: SzwedzikPL
  Returns vehicles currently placed on given ramp
*/
params ["_rampArea"];

((ASLToAGL (getPosASL _rampArea)) nearEntities [["Air", "LandVehicle", "Thing"], 12]) inAreaArray _rampArea
