_plane = _this select 0;

sleep 13;
_plane setVehicleAmmo 0;

sleep 27;
_plane setFuel 1;
_plane setDamage 0;

sleep 30;
_i = 0;
while{_i != 2} do {
_plane addMagazineTurret ["LIB_500Rnd_MG151_JU87", [-1], 500]; sleep 5; _i = _i + 1};

_plane addMagazineTurret ["LIB_1Rnd_SC500", [-1], 1];
_plane addMagazineTurret ["LIB_1Rnd_SC500", [-1], 1];
sleep 60;

_plane addMagazineTurret ["LIB_1Rnd_SC50", [-1], 1];
_plane addMagazineTurret ["LIB_1Rnd_SC50", [-1], 1];
_plane addMagazineTurret ["LIB_1Rnd_SC50", [-1], 1];
_plane addMagazineTurret ["LIB_1Rnd_SC50", [-1], 1];
_plane addMagazineTurret ["LIB_1Rnd_SC50", [-1], 1];
_plane addMagazineTurret ["LIB_1Rnd_SC50", [-1], 1];
sleep 60;

_o = 0;
while{_o != 2} do {
_plane addMagazineTurret ["LIB_2000Rnd_MG81_JU87", [0], 2000]; sleep 20; _o = _o + 1};
