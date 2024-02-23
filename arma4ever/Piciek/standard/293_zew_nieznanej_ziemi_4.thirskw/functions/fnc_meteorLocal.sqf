#include "script_component.hpp"

params ["_pos"];
private _speed = (20 + random 30);
private _dir = random 360;

private _proxy = createVehicleLocal ["test_EmptyObjectForBubbles", [0, 0, 0], [], 0, "CAN_COLLIDE"];
_proxy setPosASL _pos;
_proxy setDir _dir;

private _meteor = createVehicleLocal ["Land_W_sharpStone_03", [0, 0, 0], [], 0, "CAN_COLLIDE"];
_meteor attachTo [_proxy, [0, 0, 0]];

private _fire = createVehicleLocal ["Particle_BigFire_F", [0, 0, 0], [], 0, "CAN_COLLIDE"];
_fire attachTo [_proxy, [0, 0, 0]];

private _light = createVehicleLocal ["#lightpoint", [0, 0, 0], [], 0, "CAN_COLLIDE"];
_light lightAttachObject [_proxy, [0, 0, 0]];
_light setLightDayLight true;
_light setLightIntensity 20000; 
_light setLightColor [0.5,0.1,0];
_light setLightAmbient [0.5, 0.1 ,0];
_light setLightUseFlare true;
_light setLightFlareSize 30;

_proxy setVelocity [
  20 * (sin _dir),
  20 * (cos _dir),
  (- _speed)
];

waitUntil {
  sleep 1; 
  ((getposATL _proxy) #2) < 10;
};

private _exp = "HelicopterExploBig" createVehicleLocal (getpos _proxy);

{deleteVehicle _x} forEach [_proxy, _meteor, _fire, _light];
