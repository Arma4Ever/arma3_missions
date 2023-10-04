if(!hasInterface) exitWith {};

_pozycja = _this select 0;
_i = _this select 1;
_z = 0;

while{_z != _i} do {
	
	_pozycja say3D ["distantSiren",10000,1,false];
	sleep 60;
	
	_z = _z + 1;
	
}