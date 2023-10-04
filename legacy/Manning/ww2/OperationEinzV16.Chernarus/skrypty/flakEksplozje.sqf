if(hasInterface) exitWith {};

_expType = ["LIB_FlakExplosion2", "LIB_FlakExplosion", "LIB_Flak38Explosion"];
_expPos = _this select 0;
_unit = _this select 1;

while{alive _unit} do {

waitUntil {ostrzalDZ};

while{alive _unit && ostrzalDZ} do {
		
		
		_pos = getPosATL (selectRandom _expPos);
		_npos = [(_pos select 0)+([-15, 15] call BIS_fnc_randomInt),(_pos select 1)+([-15, 15] call BIS_fnc_randomInt),(_pos select 2)+([0, 5] call BIS_fnc_randomInt)];
		_exp = selectRandom _expType;
		
		_pocisk = _exp createVehicle _npos;
		
		sleep 0.01;
		_blysk = "#lightpoint" createVehicle _npos;
		[_blysk,[0, 0, 255]] remoteExec ["setLightColor",0];
		[_blysk,[0, 0, 255]] remoteExec ["setLightAmbient",0];
		[_blysk, 0] remoteExec ["setLightFlareSize",0];
		[_blysk, 0] remoteExec ["setLightIntensity",0];
		
		sleep 0.2;
		[_blysk,selectRandom [[255, 255, 255], [255, 255, 255], [255, 255, 255], [153, 226, 255], [255, 237, 230],[190, 190, 190]]] remoteExec ["setLightColor",0];
		[_blysk,selectRandom [[255, 255, 255], [255, 255, 255], [255, 255, 255], [153, 226, 255], [255, 237, 230], [190, 190, 190]]] remoteExec ["setLightAmbient",0];
		[_blysk,5] remoteExec ["setLightFlareSize",0];
		[_blysk,selectRandom [5500, 5450, 5400, 5350, 5300]] remoteExec ["setLightIntensity",0];
		[_blysk,5000] remoteExec ["setLightFlareMaxDistance",0];
		sleep selectRandom [0.2, 0.21, 0.22, 0.23, 0.24, 0.25, 0.26, 0.27, 0.28, 0.29, 0.30];
		deleteVehicle _blysk;
		
		sleep selectRandom [1,1.25,1.5,1.75,2];
	};
	
	};