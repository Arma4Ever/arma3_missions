#include "script_component.hpp"
if !(didJIP) then {
  "a4es_missiles_ATACMS" createVehicleLocal [4418, 4285, 0];
  "a4es_missiles_ATACMS" createVehicleLocal [4436, 4323, 0];
  "a4es_missiles_ATACMS" createVehicleLocal [4430, 4304, 0];
  [{"a4es_missiles_ATACMS" createVehicleLocal [4430, 4304, 0];}, [], 1] call CBA_fnc_waitAndExecute;
  [{"a4es_missiles_ATACMS" createVehicleLocal [4432, 4296, 0];}, [], 2] call CBA_fnc_waitAndExecute;
  
  [{Krzyc_hotel hideObject true}, [], 8] call CBA_fnc_waitAndExecute;
  if ((player distance Krzyc_hotel) <200) then {
    enableCamShake true;
    addCamShake [15, 12, 25];
  };
};

{
  _x hideObject false;
  sleep 0.001;
} forEach GVAR(additionalObjects);

sleep 4;

{
  _x hideObject false;
  sleep 0.001;
} forEach GVAR(additionalObjects);

// Release memory
GVAR(baseExtraObjects) = [];