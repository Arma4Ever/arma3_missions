#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Hides map objects
 */

#define MAP_TYPES_BUILDING			["BUILDING","HOUSE","CHURCH","CHAPEL","FUELSTATION","HOSPITAL","RUIN","BUNKER"]
#define MAP_TYPES_VEGETATION		["TREE","SMALL TREE","BUSH"]
#define MAP_TYPES_WALL				  ["WALL","FENCE"]
#define MAP_TYPES_MISC				  ["ROCK","ROCKS","FOREST BORDER","FOREST TRIANGLE","FOREST SQUARE","CROSS","FORTRESS","FOUNTAIN","VIEW-TOWER","LIGHTHOUSE","QUAY","HIDE","BUSSTOP","ROAD","FOREST","TRANSMITTER","STACK","TOURISM","WATERTOWER","TRACK","MAIN ROAD","POWER LINES","RAILWAY","POWERSOLAR","POWERWAVE","POWERWIND","SHIPWRECK","TRAIL"]

#define CATEGORY_COMP				    [MAP_TYPES_BUILDING,MAP_TYPES_WALL,MAP_TYPES_VEGETATION,MAP_TYPES_MISC]

0 spawn {
  {
    _x params ["_area", "_value"];
    private _hidingCode = if (isServer) then {
      {_x hideObject true;_x allowDamage false;}
    } else {
      {_x hideObject true;}
    };
    _area params ["_pivot", "_a", "_b"];
    private _radius = (_a max _b) * 1.42;
    private _flags = _value call bis_fnc_decodeFlags2;
    {
			if (_x == 1) then {
        private _found = nearestTerrainObjects [_pivot, CATEGORY_COMP select _forEachIndex, _radius, false, true];
        _hidingCode forEach (_found inAreaArray _area);
			};
		} forEach _flags;
  } forEach [
    [[[17369.4,15908.7,0],5,5,0,false,-1],15],
    [[[17462.8,13440.4,0],15.611,5,26.888,false,0],15],
    [[[17447.9,15817.1,0],5,5,0,false,-1],15],
    [[[17459,16624,0],5,25,121.141,false,0],15],
    [[[17160.7,13756.9,0],15,38.762,0,false,0],15],
    [[[18602.2,14054.4,0],25,25,0,false,0],15],
    [[[17572,15779.8,0],5,5,0,false,-1],15],
    [[[17812.5,16126.3,0],5,5,0,false,-1],15],
    [[[19271.6,12151.6,0],25,50,0,false,0],15],
    [[[19318.4,12206.4,0],25,50,0,false,0],15],
    [[[18781,13514,0],19.326,161.45,354.016,true,0],15],
    [[[19932.2,13071.7,0],5,5,0,false,-1],15],
    [[[19116.5,12230.5,0],25,50,0,false,0],15],
    [[[19372.8,12174.9,0],25,50,0,false,0],15],
    [[[20008.9,13005.7,0],5,5,0,false,-1],15],
    [[[20018,13082.1,0],5,5,0,false,-1],15],
    [[[19772.5,13573,0],100,100,0,false,0],15],
    [[[19777.7,14530.4,0],5,5,0,false,-1],15],
    [[[20087.5,14411.5,0],5,5,0,false,-1],15],

    [[[3607.85,4666.81,0],5,5,0,false,-1],15],
    [[[3399.75,4757.82,0],5,5,0,false,-1],15],
    [[[3396.16,4775.69,0],5,5,0,false,-1],15],
    [[[3418.94,4770.79,0],5,5,0,false,-1],15],
    [[[3433.26,4748.94,0],5,5,0,false,-1],15],
    [[[3744.57,5080.05,0],5,5,0,false,-1],15],
    [[[3799.4,5022.25,0],5,5,0,false,-1],15],
    [[[3784.09,5155.69,0],66.6059,262.949,73.9372,false,0],4],
    [[[4148.37,2902.59,0],150,50,0.455,false,0],7],
    [[[4154.67,5145.15,0],5,5,0,false,-1],15],
    [[[4924.82,2953.6,0],50,125.838,223.512,false,0],7],
    [[[4418.52,3068,0],5,5,0,false,-1],15],
    [[[4184.2,2992.19,0],5,5,0,false,-1],15],
    [[[4721.28,4482.39,0],15,15,0,false,0],15],
    [[[4738.83,2915.29,0],5,5,0,false,-1],15],
    [[[4935.13,3355.15,0],5,5,0,false,-1],15],
    [[[4937.68,3367.04,0],5,5,0,false,-1],15],
    [[[4959.91,3372.76,0],25,50,63.276,false,0],11],
    [[[4534.41,2715.82,0],89.084,250,94.669,false,0],4],
    [[[4970.43,3382.74,0],5,5,0,false,-1],15],
    [[[4553.75,2801.8,0],5,5,0,false,-1],15],
    [[[4589.44,2794.37,0],15,20.7146,0,false,0],15],
    [[[5728.89,3401.11,0],5,5,0,false,-1],15],
    [[[5753.35,4828.51,0],16.321,9.667,0,false,0],15],
    [[[5089.37,3531.23,0],15,15,0,false,0],15]
  ];
};
