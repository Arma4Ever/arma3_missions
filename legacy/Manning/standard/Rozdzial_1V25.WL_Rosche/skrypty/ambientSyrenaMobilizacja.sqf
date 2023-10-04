if(!hasInterface) exitWith {};

_syreny = _this select 0;
_i = 10;
_z = 0;

while{_z != _i} do {
	
	{_x say3D ["siren",300,1,false];} forEach _syreny;
	sleep 4;
	
	_z = _z + 1;
	
}