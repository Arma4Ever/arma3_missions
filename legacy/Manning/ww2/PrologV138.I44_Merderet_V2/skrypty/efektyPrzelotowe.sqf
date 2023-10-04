//nie uzywac do innych misji niz PROLOG if

if(hasInterface) exitWith {};

_pojazd = _this select 0;
_pilot = _this select 1;
_expType = ["LIB_FlakExplosion2", "LIB_FlakExplosion", "LIB_Flak38Explosion"];

_arrayGunners = [AA_1G, AA_3G, AA_5G, AA_6G, AA_7G, AA_9G, AA_10G, AA_12G, AA_13G, AA_15G, AA_16G, AA_17G, AA_18G, AA_19G, AA_20G];

_aliveGunners = 0;

{
	if (alive _x) then { _aliveGunners = _aliveGunners + 1; } else {};
	
} forEach _arrayGunners;

_defaultChance = 5;

_acutalEvent = _aliveGunners - _defaultChance;
_deathType = ["blowUp", "engineFail", "engineFire"];

_pojazd setCollisionLight true;

if (_acutalEvent >= 8) then {

	sleep ([50, 180] call BIS_fnc_randomInt);
	
	_typSmierci = selectRandom _deathType; 
	_szansaSmierci = selectRandom [1,2,3,4,5];
	
	if(_szansaSmierci == 1 || _szansaSmierci == 2 || _szansaSmierci == 3) then {
			
		if(_typSmierci == "blowUp") then {
			
			_pojazd allowDamage false;
			_i = 0;
				
			while{_i != 10} do {
			_posO = getPosATL _pojazd;
			_pos = [(_posO select 0) + ([-10, 10] call BIS_fnc_randomInt),(_posO select 1) + ([-10, 10] call BIS_fnc_randomInt),(_posO select 2) + ([-10, 10] call BIS_fnc_randomInt)];
			_exp = selectRandom _expType;
			_pocisk = _exp createVehicle _pos;
	
			sleep 0.01;
			_blysk = "#lightpoint" createVehicle [0,0,0];
			_blysk setPos _pos;
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
	
			sleep selectRandom [0.25, 0.5, 0.75];
			_i = _i + 1;
			};
			
			_pojazd allowDamage true;
			detach _pojazd; _pojazd setDamage 1;
			};
				
		if(_typSmierci == "engineFail") then {
		
			_pojazd allowDamage false;
			_i = 0;
			
			while{_i != 10} do {
			_posO = getPosATL _pojazd;
			_pos = [(_posO select 0) + ([-10, 10] call BIS_fnc_randomInt),(_posO select 1) + ([-10, 10] call BIS_fnc_randomInt),(_posO select 2) + ([-10, 10] call BIS_fnc_randomInt)];
			_exp = selectRandom _expType;
			_pocisk = _exp createVehicle _pos;
	
			sleep 0.01;
			_blysk = "#lightpoint" createVehicle [0,0,0];
			_blysk setPos _pos;
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
	
			sleep selectRandom [0.25, 0.5, 0.75];
			_i = _i + 1;
			};
			
			_pojazd allowDamage true;
			detach _pojazd; 
			_pojazd engineOn false;};
				
			if(_typSmierci == "engineFire") then {
			
			_pojazd allowDamage false;
			_i = 0;
			
			while{_i != 10} do {
			_posO = getPosATL _pojazd;
			_pos = [(_posO select 0) + ([-10, 10] call BIS_fnc_randomInt),(_posO select 1) + ([-10, 10] call BIS_fnc_randomInt),(_posO select 2) + ([-10, 10] call BIS_fnc_randomInt)];
			_exp = selectRandom _expType;
			_pocisk = _exp createVehicle _pos;
	
			sleep 0.01;
			_blysk = "#lightpoint" createVehicle [0,0,0];
			_blysk setPos _pos;
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
	
			sleep selectRandom [0.25, 0.5, 0.75];
			_i = _i + 1;};
			
			_strona = selectRandom [1,-1];
				
			if(_strona == 1) then {
				_pojazd allowDamage false;
				_pozar = "test_EmptyObjectForFireBig" createVehicle [0,0,0];
				_pozar attachTo [_pojazd,[-3,5,-1]];
				sleep ([3, 15] call BIS_fnc_randomInt);
				detach _pojazd;
				sleep 30;
				_pojazd allowDamage true; 
				sleep selectRandom [530,600,630]; 
				deleteVehicle _pozar;
				} 
				else {
				_pojazd allowDamage false;
				_pozar = "test_EmptyObjectForFireBig" createVehicle [0,0,0];
				_pozar attachTo [_pojazd,[3,5,-1]];
				sleep ([3, 15] call BIS_fnc_randomInt);
				detach _pojazd;
				sleep 30; 
				_pojazd allowDamage true; 
				sleep selectRandom [530,600,630]; 
				deleteVehicle _pozar;}
			};
			};
	};
if (_acutalEvent < 8 && _acutalEvent >= 4) then {
	
	sleep ([50, 180] call BIS_fnc_randomInt);
	
	_typSmierci = selectRandom _deathType; 
	_szansaSmierci = selectRandom [1,2,3,4,5];
	
	if(_szansaSmierci == 1 || _szansaSmierci == 2 || _szansaSmierci == 3) then {
			
			if(_typSmierci == "blowUp") then {
			
				_pojazd allowDamage false;
				_i = 0;
				
				while{_i != 10} do {
				_posO = getPosATL _pojazd;
				_pos = [(_posO select 0) + ([-10, 10] call BIS_fnc_randomInt),(_posO select 1) + ([-10, 10] call BIS_fnc_randomInt),(_posO select 2) + ([-10, 10] call BIS_fnc_randomInt)];
				_exp = selectRandom _expType;
				_pocisk = _exp createVehicle _pos;
		
				sleep 0.01;
				_blysk = "#lightpoint" createVehicle [0,0,0];
				_blysk setPos _pos;
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
		
				sleep selectRandom [0.25, 0.5, 0.75];
				_i = _i + 1;
				};
				
				_pojazd allowDamage true;
				detach _pojazd; _pojazd setDamage 1;
				};
				
			if(_typSmierci == "engineFail") then {
			
				_pojazd allowDamage false;
				_i = 0;
				
				while{_i != 10} do {
				_posO = getPosATL _pojazd;
				_pos = [(_posO select 0) + ([-10, 10] call BIS_fnc_randomInt),(_posO select 1) + ([-10, 10] call BIS_fnc_randomInt),(_posO select 2) + ([-10, 10] call BIS_fnc_randomInt)];
				_exp = selectRandom _expType;
				_pocisk = _exp createVehicle _pos;
		
				sleep 0.01;
				_blysk = "#lightpoint" createVehicle [0,0,0];
				_blysk setPos _pos;
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
		
				sleep selectRandom [0.25, 0.5, 0.75];
				_i = _i + 1;
				};
				
				_pojazd allowDamage true;
				detach _pojazd; 
				_pojazd engineOn false;};
				
			if(_typSmierci == "engineFire") then {
			
				_pojazd allowDamage false;
				_i = 0;
				
				while{_i != 10} do {
				_posO = getPosATL _pojazd;
				_pos = [(_posO select 0) + ([-10, 10] call BIS_fnc_randomInt),(_posO select 1) + ([-10, 10] call BIS_fnc_randomInt),(_posO select 2) + ([-10, 10] call BIS_fnc_randomInt)];
				_exp = selectRandom _expType;
				_pocisk = _exp createVehicle _pos;
		
				sleep 0.01;
				_blysk = "#lightpoint" createVehicle [0,0,0];
				_blysk setPos _pos;
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
		
				sleep selectRandom [0.25, 0.5, 0.75];
				_i = _i + 1;};
				
				_strona = selectRandom [1,-1];
				
				if(_strona == 1) then {
					_pojazd allowDamage false;
					_pozar = "test_EmptyObjectForFireBig" createVehicle [0,0,0];
					_pozar attachTo [_pojazd,[-3,5,-1]];
					sleep ([3, 15] call BIS_fnc_randomInt);
					detach _pojazd;
					sleep 30;
					_pojazd allowDamage true; 
					sleep selectRandom [530,600,630]; 
					deleteVehicle _pozar;
					} 
					
					else {
					_pojazd allowDamage false;
					_pozar = "test_EmptyObjectForFireBig" createVehicle [0,0,0];
					_pozar attachTo [_pojazd,[3,5,-1]];
					sleep ([3, 15] call BIS_fnc_randomInt);
					detach _pojazd;
					sleep 30; 
					_pojazd allowDamage true; 
					sleep selectRandom [530,600,630]; 
					deleteVehicle _pozar;}
			};
			};
	};
	
if (_acutalEvent < 4 && _acutalEvent >= 0) then {
	
	sleep ([50, 180] call BIS_fnc_randomInt);
	
	_typSmierci = selectRandom _deathType; 
	_szansaSmierci = selectRandom [1,2,3,4,5];
	
	if(_szansaSmierci == 1 || _szansaSmierci == 2 || _szansaSmierci == 3) then {
			
			if(_typSmierci == "blowUp") then {
			
				_pojazd allowDamage false;
				_i = 0;
				
				while{_i != 10} do {
				_posO = getPosATL _pojazd;
				_pos = [(_posO select 0) + ([-10, 10] call BIS_fnc_randomInt),(_posO select 1) + ([-10, 10] call BIS_fnc_randomInt),(_posO select 2) + ([-10, 10] call BIS_fnc_randomInt)];
				_exp = selectRandom _expType;
				_pocisk = _exp createVehicle _pos;
		
				sleep 0.01;
				_blysk = "#lightpoint" createVehicle [0,0,0];
				_blysk setPos _pos;
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
		
				sleep selectRandom [0.25, 0.5, 0.75];
				_i = _i + 1;
				};
				
				_pojazd allowDamage true;
				detach _pojazd; _pojazd setDamage 1;
				};
				
			if(_typSmierci == "engineFail") then {
			
				_pojazd allowDamage false;
				_i = 0;
				
				while{_i != 10} do {
				_posO = getPosATL _pojazd;
				_pos = [(_posO select 0) + ([-10, 10] call BIS_fnc_randomInt),(_posO select 1) + ([-10, 10] call BIS_fnc_randomInt),(_posO select 2) + ([-10, 10] call BIS_fnc_randomInt)];
				_exp = selectRandom _expType;
				_pocisk = _exp createVehicle _pos;
		
				sleep 0.01;
				_blysk = "#lightpoint" createVehicle [0,0,0];
				_blysk setPos _pos;
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
		
				sleep selectRandom [0.25, 0.5, 0.75];
				_i = _i + 1;
				};
				
				_pojazd allowDamage true;
				detach _pojazd; 
				_pojazd engineOn false;};
				
			if(_typSmierci == "engineFire") then {
			
				_pojazd allowDamage false;
				_i = 0;
				
				while{_i != 10} do {
				_posO = getPosATL _pojazd;
				_pos = [(_posO select 0) + ([-10, 10] call BIS_fnc_randomInt),(_posO select 1) + ([-10, 10] call BIS_fnc_randomInt),(_posO select 2) + ([-10, 10] call BIS_fnc_randomInt)];
				_exp = selectRandom _expType;
				_pocisk = _exp createVehicle _pos;
		
				sleep 0.01;
				_blysk = "#lightpoint" createVehicle [0,0,0];
				_blysk setPos _pos;
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
		
				sleep selectRandom [0.25, 0.5, 0.75];
				_i = _i + 1;};
				
				_strona = selectRandom [1,-1];
				
				if(_strona == 1) then {
					_pojazd allowDamage false;
					_pozar = "test_EmptyObjectForFireBig" createVehicle [0,0,0];
					_pozar attachTo [_pojazd,[-3,5,-1]];
					sleep ([3, 15] call BIS_fnc_randomInt);
					detach _pojazd;
					sleep 30;
					_pojazd allowDamage true; 
					sleep selectRandom [530,600,630]; 
					deleteVehicle _pozar;
					} 
					
					else {
					_pojazd allowDamage false;
					_pozar = "test_EmptyObjectForFireBig" createVehicle [0,0,0];
					_pozar attachTo [_pojazd,[3,5,-1]];
					sleep ([3, 15] call BIS_fnc_randomInt);
					detach _pojazd;
					sleep 30; 
					_pojazd allowDamage true; 
					sleep selectRandom [530,600,630]; 
					deleteVehicle _pozar;}
			};
			};
	};
		
sleep 240;

if(alive _pojazd) then {deleteVehicle _pojazd;};