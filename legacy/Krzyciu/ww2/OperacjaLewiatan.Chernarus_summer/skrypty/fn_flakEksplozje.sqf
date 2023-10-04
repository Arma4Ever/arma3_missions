// Stowrzone przez Manninga - Podawac ["array z celami" , "warunek wybuchu 1 (np aktywny samolot, zyjacy zolnierz - cos co moze byc albo zywe albo martwe:) )"]

if(isDedicated) then {

_expType = ["LIB_FlakExplosion2", "LIB_FlakExplosion", "LIB_Flak38Explosion"];
_expPos = _this select 0;
_unit = _this select 1;


while{alive _unit} do {


		_pos = getPosATL (selectRandom _expPos);

		_exp = selectRandom _expType;

		_pocisk = _exp createVehicle _pos;

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
		sleep selectRandom [1,2,3,4];
		deleteVehicle _blysk;

		sleep selectRandom [3,4,5,4.5,3.5];
	};
};
