sleep (6);
_object = _this select 0; 
 
_li = "#lightpoint" createVehicleLocal getpos _object; 
_li setLightBrightness 50; 
_li setLightAmbient[1, 1, 1]; 
_li setLightColor[1, 1, 1]; 
_li lightAttachObject [_object, [0,0,0]]; 
_source = "#particlesource" createVehicleLocal getPos _object; 
_source setParticleCircle [0, [0, 0, 0]]; 
_source setParticleRandom [0, [0.25, 0.25, 0], [0.175, 0.175, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0]; 
_source setParticleParams [["\A3\data_f\blesk1", 1, 0, 1], "", "SpaceObject", 1, 0.5, [0, 0, 0], [0, 0, 5], 0, 10, 7.9, 0.075, [0.001, 2, 4], [[1, 0.1, 0.1, 1], [0.25, 0.25, 0.25, 0.5], [0.5, 0.5,0.5, 0]], [0.08], 1, 0, "", "", _object]; 
_source setDropInterval 0.05;