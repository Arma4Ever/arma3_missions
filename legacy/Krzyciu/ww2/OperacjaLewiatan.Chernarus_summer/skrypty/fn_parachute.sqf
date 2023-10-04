params ["_plane","_unit"];
private _velocity = velocity _unit;
cutText ["","BLACK OUT"];
_pos = getPosATL _unit;
_unit disableCollisionWith _plane;
sleep 0.2;
_unit setPosATL _pos;
_unit setVelocity _velocity;
_unit setDir ((getDir _plane)- 90);
_unit allowDamage false;
_unit switchMove (selectRandom["LIB_StaticLine_Exit1","LIB_StaticLine_Exit2","LIB_StaticLine_Exit3","LIB_StaticLine_Exit4","LIB_StaticLine_Exit5"]);
sleep 0.2;
cutText ["","BLACK IN"];


_x = random [-1,0,1];
_y = random [-1,0,1];
_z = random [-0.5,-1,-3];
_unit addTorque (_unit vectorModelToWorld [_x,_y,_z]);

      _vUp = vectorUp _unit;
      _vDir = vectorDir _unit;
      _vel = velocity _unit;

      _chute = "LIB_US_Parachute" createvehicle [(_pos select 0),(_pos select 1),5000];
      _chute disableCollisionWith _plane;
      _chute allowDamage false;
      _chute setPosASL _pos;
      _chute setVectorDirAndUp [_vDir,_vUp];
      _chute setVelocity _vel;
			sleep 0.1;
      _unit moveInAny _chute;
			_unit setVelocity _vel;
    	_chute allowDamage true;
      sleep 100;
      _unit allowDamage true;
