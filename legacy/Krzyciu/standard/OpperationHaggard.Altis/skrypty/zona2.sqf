_unit = _this select 0;
_agro = _this select 1;


while {true} do

{


sleep 1;

	_targets = nearestObjects [_unit,["MAN"],_agro];
	{if ((_x != player) or (!(alive _x))) then {_targets=_targets-[_x];};}ForEach _targets;

{

if (_x ==player) then

{
"filmGrain" ppEffectEnable true; 
"filmGrain" ppEffectAdjust [-0.3, 1, 1, 0.1, 1, false];
"filmGrain" ppEffectCommit 5;
};

		if ((_x ==player) and (_unit distance _x < _agro) and (_unit distance _x > _agro/1.5)) then

		{
		playmusic "geiger1";


	sleep 2;
		};
	


		if ((_x ==player) and (_unit distance _x < _agro/1.5) and (_unit distance _x > _agro/2.5)) then

		{
		playmusic "geiger2";


	sleep 3;
		};

		if ((_x ==player) and _unit distance _x < _agro/3) then

		{
		playmusic "geiger0";

"filmGrain" ppEffectEnable true; 
"filmGrain" ppEffectAdjust [0.3, 1, 1, 0.1, 1, false];
"filmGrain" ppEffectCommit 5;

	sleep 2;

		};

	}ForEach _targets;



};