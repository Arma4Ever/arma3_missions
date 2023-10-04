// Stowrzone przez Manninga - Podawac ["array z celami" , "warunek wybuchu 1 (np aktywny samolot, zyjacy zolnierz - cos co moze byc albo zywe albo martwe:) )"]

if(hasInterface) exitWith {};

_expType = ["LIB_FlakExplosion2", "LIB_FlakExplosion", "LIB_Flak38Explosion"];
_expPos = _this select 0;
_unit = _this select 1;


while{alive _unit} do {
		
		
		_pos = getPosATL (selectRandom _expPos);
		
		_exp = selectRandom _expType;
		
		_pocisk = _exp createVehicle _pos;
		
		sleep 0.01;
		_blysk = "#lightpoint" createVehicle _pos;
		_blysk setLightFlareSize 0;
		_blysk setLightBrightness 0; 
		_blysk setLightIntensity 0;
		_blysk setLightColor [0,0,0]; 
		_blysk setLightAmbient [0,0,0];
		
		sleep 0.2;
		_blysk setLightFlareSize 5;
		_blysk setLightBrightness selectRandom [3500, 3450, 3400, 3350, 3300]; 
		_blysk setLightIntensity selectRandom [3500, 3450, 3400, 3350, 3300]; 
		_blysk setLightColor selectRandom [[255, 255, 255], [255, 255, 255], [255, 255, 255], [153, 226, 255], [255, 237, 230],[190, 190, 190]]; 
		_blysk setLightAmbient selectRandom [[255, 255, 255], [255, 255, 255], [255, 255, 255], [153, 226, 255], [255, 237, 230], [190, 190, 190]];
		sleep selectRandom [0.2, 0.21, 0.22, 0.23, 0.24, 0.25, 0.26, 0.27, 0.28, 0.29, 0.30];
		deleteVehicle _blysk;
		
		sleep selectRandom [2, 3, 4, 5];
	};