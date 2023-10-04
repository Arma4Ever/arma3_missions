if (!hasInterface) exitWith {};
private _emp2 = "#lightpoint" createVehicleLocal [0,0,0];
_emp2 setLightDayLight true;
_emp2 setLightUseFlare true;
_emp2 setLightFlareMaxDistance 20000;
_emp2 setLightAmbient[1,0.5,1];
_emp2 setLightColor[0.3,0.2,1];
_emp2 setLightBrightness 0;
_emp2 setLightFlareSize 0;
_emp2 setPosASL (getPosASL gl_emp);
private _handle2 = [{if (currentVisionMode player == 1) then {player action ["nvGogglesOff", player]}}, 0, []] call CBA_fnc_addPerFrameHandler;

[_emp2] spawn {
  params ["_emp2"];
  sleep 30;
  deleteVehicle _emp2;
};

addCamShake [10, 5, 50];
gl_emp say3D ["buzzer", 20000, 1,true];

private _bright = 0;
while {alive _emp2 && _bright<800} do {
_emp2 setLightBrightness (_bright + 4);
_emp2 setLightFlareSize (_bright + 4);
_bright=_bright+4;
sleep 0.05;
};
gl_emp say3D ["buzzer", 20000, 1,true];
addCamShake [10, 5, 50];
while {alive _emp2 && _bright>0} do {
_emp2 setLightBrightness (_bright - 4);
_emp2 setLightFlareSize (_bright - 4);
_bright=_bright-4;
sleep 0.05;
};
