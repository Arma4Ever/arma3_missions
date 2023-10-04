_unit = _this select 0;
_agro = _this select 1;
_dmgbaza = _this select 2;

[_unit,_agro] execVM "skrypty\zona2.sqf";

while {true} do

{
	sleep 4;
	_targets = nearestObjects [_unit,["MAN"],_agro];
	{if ((_x != player) or (!(alive _x))) then {_targets=_targets-[_x];};}ForEach _targets;



	{

		_dmg = _dmgbaza;

		if (_unit distance _x < _agro/2) then

		{
			if ((headgear _x == "H_PilotHelmetFighter_B") and (vest _x == "V_RebreatherB")) then
			{_dmg = _dmg - 0.2;};


			if ((headgear _x == "H_CrewHelmetHeli_B")) then
			{_dmg = _dmg - 0.15;};

		if ((_x ==player) and (_dmg > 0)) then
			{

					_czas = (_dmg*10)*(_dmg*10);
					"dynamicBlur" ppEffectAdjust [3];
					"dynamicBlur" ppEffectCommit 0.01;
					"dynamicBlur" ppEffectEnable true;
					sleep _czas;
					"dynamicBlur" ppEffectAdjust [0];
					"dynamicBlur" ppEffectCommit 3;
					"dynamicBlur" ppEffectEnable true;
					_x setDamage (damage _x + (_dmg));
			};

		};

	}ForEach _targets;



};