if(hasInterface) exitWith {};

_pozycje = _this select 0;
_warunek = _this select 1;

_i = 0;

sleep 10;

while{_warunek} do {

	_opoznienie = selectRandom [10,11,12,13,14,15];

	_efekt = selectRandom ["LIB_boom_m3","LIB_Flak36Explosion","LIB_Flak38Explosion","LIB_FlakExplosion","LIB_FlakExplosion2","LIB_GrenadeExplosion_base","G_40mm_Smoke"];

	_pos = getPosATL (selectRandom _pozycje);

	_pocisk = _efekt createVehicle _pos;

	sleep 0.01;
	_blysk = "#lightpoint" createVehicle _pos;
	[_blysk,0.0] remoteExec ["setLightBrightness",0,_blysk];
	[_blysk,[0, 0, 255]] remoteExec ["setLightColor",0,_blysk];
	[_blysk,[0, 0, 255]] remoteExec ["setLightAmbient",0,_blysk];
	[_blysk, 0] remoteExec ["setLightFlareSize",0,_blysk];
	[_blysk, 0] remoteExec ["setLightIntensity",0,_blysk];
	
	sleep 0.2;
	[_blysk,selectRandom [3500, 3450, 3400, 3350, 3300]] remoteExec ["setLightBrightness",0,_blysk];
	[_blysk,selectRandom [[255, 255, 255], [255, 255, 255], [255, 255, 255], [153, 226, 255], [255, 237, 230],[190, 190, 190]]] remoteExec ["setLightColor",0,_blysk];
	[_blysk,selectRandom [[255, 255, 255], [255, 255, 255], [255, 255, 255], [153, 226, 255], [255, 237, 230], [190, 190, 190]]] remoteExec ["setLightAmbient",0,_blysk];
	[_blysk,5] remoteExec ["setLightFlareSize",0,_blysk];
	[_blysk,selectRandom [5500, 5450, 5400, 5350, 5300]] remoteExec ["setLightIntensity",0,_blysk];
	[_blysk,5000] remoteExec ["setLightFlareMaxDistance",0,_blysk];
	sleep selectRandom [0.2, 0.21, 0.22, 0.23, 0.24, 0.25, 0.26, 0.27, 0.28, 0.29, 0.30];
	deleteVehicle _blysk;
		
	_i = _i + _opoznienie;

	sleep _opoznienie;

};

if(!_warunek) exitWith {{deleteVehicle _x; sleep 0.5;} forEach _pozycje;};