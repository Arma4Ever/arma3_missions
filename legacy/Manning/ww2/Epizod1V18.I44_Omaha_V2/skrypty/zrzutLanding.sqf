_box = _this select 0;
_para = _this select 1;

WaitUntil {((((position _box) select 2) < 0.6) || (isNil "_para"))};
detach _box;
_box SetVelocity [0,0,-5];           
sleep 0.3;
_box setPos [(position _box) select 0, (position _box) select 1, 0.6];
_smoke_1 = "SmokeShellBlue" createVehicle getPos _box;