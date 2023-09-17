#include "script_component.hpp"

private _class = "Box_NATO_Ammo_F";
private _inventory = [["rhs_GRD40_White",10],["rhs_30Rnd_545x39_7N6M_plum_AK",60],["rhs_rpg7_PG7VL_mag",2],["rhs_45Rnd_545X39_7N6_AK",8],["rhs_18rnd_9x21mm_7N28",12],["rhs_100Rnd_762x54mmR",3],["rhs_VOG25",20],["rhs_10Rnd_762x54mmR_7N1",6]];
private _pos = [2446.44,5130.07,0.8];

[_class, _inventory, _pos] spawn FUNC(spawnBox);