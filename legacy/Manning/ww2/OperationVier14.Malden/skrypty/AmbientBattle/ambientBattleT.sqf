if(!hasInterface) exitWith {};

_pozycje = _this select 0;
_dirMain = _this select 1;
_warunek = _this select 2;
_i = 0;

if(_dirMain == -1) then {
while{ _warunek} do {
	_opoznienie = selectRandom [0.05,0.06,0.07,0.08,0.09,0.1];

	_pos = selectRandom _pozycje;
	_actualPos = getPos _pos;

	_randomizerPos = [(_actualPos select 0)+([-15, 15] call BIS_fnc_randomInt),(_actualPos select 1)+([-15, 15] call BIS_fnc_randomInt),(_actualPos select 2)+([0, 5] call BIS_fnc_randomInt)];
	_speed = [[-550, 550] call BIS_fnc_randomInt,[-550, 550] call BIS_fnc_randomInt,[10, 50] call BIS_fnc_randomInt];

	_color = selectRandom [[235, 220, 190],[235, 90, 120], [235, 230, 230]];

	_bulletType = selectRandom ["LIB_B_792x33_Ball_t","LIB_B_9x19_Ball_t","LIB_B_762x63_Ball_t","LIB_B_792x57_Ball_MG34"];
	
	_pocisk = _bulletType createVehicleLocal _randomizerPos;
	_light = "#lightpoint" createVehicleLocal _randomizerPos; 
	_light setLightAmbient [2.35, 0.7, 0.7]; 
	_light setLightDayLight true; 
	_light setLightIntensity (if (sunOrMoon > 0.5) then [{100},{100}]); 
	_light setLightUseFlare true; 
	_light setLightFlareSize 1; 
	_light setLightFlareMaxDistance 5000; 
	_light setLightColor _color;
	_light attachTo [_pocisk,[0,0,0]];
	_pocisk setVelocity _speed;
    
	_null = [_light, _pocisk] execVM "skrypty\AmbientBattle\ambientBattleTDelete.sqf";
	
	_i = _i + _opoznienie;
	sleep _opoznienie;
};} else 
{
while{ _warunek} do {
	_opoznienie = selectRandom [0.1,0.2,0.3,0.4,0.5];

	_pos = selectRandom _pozycje;
	_actualPos = getPos _pos;
	_dir = _dirMain + ([-25,25] call BIS_fnc_randomInt);
	_randomizerPos = [(_actualPos select 0)+([-15, 15] call BIS_fnc_randomInt),(_actualPos select 1)+([-15, 15] call BIS_fnc_randomInt),(_actualPos select 2)+([0, 5] call BIS_fnc_randomInt)];
	_speed = [sin(_dir) * ([550, 750] call BIS_fnc_randomInt),cos(_dir) * ([550, 750] call BIS_fnc_randomInt),[10, 50] call BIS_fnc_randomInt];

	_color = selectRandom [[235, 220, 190],[235, 90, 120], [235, 230, 230]];

	_bulletType = selectRandom ["LIB_B_792x33_Ball_t","LIB_B_9x19_Ball_t","LIB_B_762x63_Ball_t","LIB_B_792x57_Ball_MG34"];
	
	_pocisk = _bulletType createVehicleLocal _randomizerPos;
	_light = "#lightpoint" createVehicleLocal _randomizerPos; 
	_light setLightAmbient [2.35, 0.7, 0.7]; 
	_light setLightDayLight true; 
	_light setLightIntensity (if (sunOrMoon > 0.5) then [{10},{10}]); 
	_light setLightUseFlare true; 
	_light setLightFlareSize 1; 
	_light setLightFlareMaxDistance 5000; 
	_light setLightColor _color;
	_light attachTo [_pocisk,[0,0,0]];
	_pocisk setVelocity _speed;
    
	_null = [_light, _pocisk] execVM "skrypty\AmbientBattle\ambientBattleTDelete.sqf";
	
	_i = _i + _opoznienie;
	sleep _opoznienie;
};};

if(!_warunek) exitWith {{deleteVehicle _x; sleep 0.5;} forEach _pozycje;};