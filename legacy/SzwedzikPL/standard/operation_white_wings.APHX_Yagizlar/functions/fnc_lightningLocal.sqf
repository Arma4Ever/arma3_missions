#include "script_component.hpp"
/*
 * Author: Karel Moricky, Edit by SzwedzikPL
 * Paradrop lightning effect - local effect
 */

private _posATL = _this;

playSound3D [
  format ["a3\sounds_f\environment\ambient\thunders\thunder_0%1.wss", ceil random 5],
  player,
  false,
  ATLToASL _posATL,
  5,
  1,
  2000,
  0,
  true
];

private _light = "#lightpoint" createVehicleLocal _posATL;

_light setPosATL (_posATL vectorAdd [0, 0, 10]);
_light setLightDayLight true;
_light setLightBrightness 300;
_light setLightUseFlare true;
_light setLightFlareSize 625;
_light setLightFlareMaxDistance 1200;
_light setLightAmbient [0.05, 0.05, 0.1];
_light setlightcolor [1, 1, 2];

sleep 0.1;
_light setLightBrightness 0;

sleep (random 0.1);

private _lightning = (selectRandom ["lightning1_F", "lightning2_F"]) createVehiclelocal [0, 0, 0];

_lightning setDir (random 360);
_lightning setPosATL _posATL;

private _duration = 3 + (random 1);

for "_i" from 0 to _duration do {
  private _time = time + 0.1;
  _light setLightBrightness (100 + random 100);
  waituntil {
    time > _time
  };
};

deleteVehicle _lightning;
deleteVehicle _light;
