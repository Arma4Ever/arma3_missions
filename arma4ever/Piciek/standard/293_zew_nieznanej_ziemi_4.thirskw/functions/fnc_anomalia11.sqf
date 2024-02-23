#include "script_component.hpp"

params ["_object"];

private _li = "#lightpoint" createVehicleLocal getpos _object;
private _source = "#particlesource" createVehicleLocal getPos _object; 
_li setLightIntensity 50000; 
_li setLightAmbient[1, 1, 1]; 
_li setLightColor[1, 1, 1]; 
_li lightAttachObject [_object, [0,0,0]]; 
_source setParticleParams [["\A3\data_f\blesk1",16,12,8,1],"","Spaceobject",1,1,[0,0,0],[0,0,0],1,0.01,0,1.4,[0.07,0.07],[[1,1,1,1]],[0,1],0.2,1.2,"","",_object];
_source setParticleRandom [0,[1,1,1],[0,0,0],0,0.01,[0,0,0,0.1],0,0];
_source setParticleCircle [0,[0,0,0]];
_source setDropInterval 0.05;
GVAR(anomalySoundLoop) = [{
params ["_object"];
// jakby obiekt umarł/usunął się to usuwa loopa
  if !(alive _object) exitWith {
    [GVAR(anomalySoundLoop)] call CBA_fnc_removePerFrameHandler;
  };
  _object say3D "mission_anomalia_sound"
}, 19, _object] call CBA_fnc_addPerFrameHandler;