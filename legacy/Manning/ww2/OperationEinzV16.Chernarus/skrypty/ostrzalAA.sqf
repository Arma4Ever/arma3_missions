if(!hasInterface && !isDedicated) then {

_AAtargets = _this select 0;
_AAgun = _this select 1;
_gunner = gunner _AAgun;
_pos = getPos _AAgun;

_firePos = selectRandom _AAtargets;
	
_AAgun doTarget _firePos;

sleep 10;
while{alive _gunner} do {

waitUntil{ostrzalDZ};

while{alive _gunner && ostrzalDZ} do {
	
	_i = 0;
	//pobranie celu
	_firePos = selectRandom _AAtargets;
	
	_AAgun doTarget _firePos;
	
	sleep 1;
	
	while{ostrzalDZ} do {
		sleep 1;
		_AAgun action ["useWeapon", _AAgun, gunner _AAgun,1];
		sleep 1;
		_AAgun setVehicleAmmoDef 1;
		_i = _i + 1;
	};
	
	};
};};