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

// Hide jars
0 call {
  private _objects = nearestTerrainObjects [[1594.02,12570.4,0], ["HIDE"], 800];
  private _jars = ["vn_jar_01.p3d", "vn_jar_02.p3d", "vn_jar_03.p3d"];
  {
  	if (((getModelInfo _x) # 0) in _jars) then {
  		_x hideObject true;
  	};
  } forEach _objects;
};

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
    [[[1046.17,9995.07,3.697],53.8123,67.4286,168.102,false,0],15],
    [[[1161.26,11147,0.644337],70.2357,53.4556,2.51125,false,0],15],
    [[[1387.37,12542.6,2.2365],49.7942,75.303,168.102,false,0],15],
    [[[1676.6,11343.2,0.352124],61.8554,46.6917,168.102,false,0],15],
    [[[2176.64,11939,-7.62939e-006],32.473,27.435,168.102,false,0],15],
    [[[3203.25,13697.6,0],8.54605,8.24005,88.255,true,0],8],
    [[[3530.92,8701.53,0],21.7303,24.9675,0,false,0],15],
    [[[7707.72,7557.61,0],32.473,27.435,292.737,false,0],15],
    [[[8584.23,8188.76,0],32.473,27.435,292.737,false,0],15],
    [[[15584.7,7059.01,0.0139999],50.858,29.508,181.916,true,0],9],
    [[[15607.6,7123.2,0],3.31917,3.3187,88.2549,true,0],9],
    [[[15630.8,7220.96,0],48.4899,6.91488,273.499,true,0],9],
    [[[15610.8,7209.26,0],3.31917,3.3187,88.2549,true,0],9],
    [[[15653.3,7133.99,1.24984],15.9061,8.28802,358.484,true,0],9],
    [[[15645.9,7289.21,0],3.31917,3.3187,88.2549,true,0],9],
    [[[15642.6,7310.78,0],3.31917,3.3187,88.2549,true,0],9],
    [[[15668.7,7285.41,0],7.43617,5.54181,181.916,true,0],9],
    [[[15662.5,7373.55,0],3.31917,3.3187,88.2549,true,0],9],
    [[[15655.2,7394.35,0],3.31917,3.3187,88.2549,true,0],9],
    [[[15672.8,7397.04,0],3.31917,3.3187,88.2549,true,0],9],
    [[[15685.9,7149.31,0],5.59718,14.208,358.484,true,0],9],
    [[[15713.3,7230.29,0],40.3867,7.76398,181.916,true,0],9],
    [[[15702.8,7275.32,0.230201],4.75923,5.70521,358.484,true,0],9],
    [[[15696,7296.23,0.0137043],3.31917,3.3187,181.916,true,0],9],
    [[[15682.4,7287.04,0.0132046],3.31917,3.3187,181.916,true,0],9],
    [[[15740.9,7362.35,0],0.905516,0.923554,0.046,true,0],9],
    [[[15799.8,7343.01,0],0.905516,0.923554,0.046,true,0],9],
    [[[15777.5,7348.16,0],0.905516,0.923554,0.046,true,0],9],
    [[[15790.2,7394.68,0],3.319,3.319,88.255,true,0],9],
    [[[15777.8,7367.68,0],0.905516,0.923554,0.046,true,0],9],
    [[[15801.5,7379.1,0],0.905516,0.923554,0.046,true,0],9],
    [[[15836.5,7370.63,0],0.905516,0.923554,0.046,true,0],9],
    [[[15972,7317.28,0],0.905516,0.923554,0.046,true,0],9],
    [[[16027.9,7285.78,0],13.1338,11.3237,326.174,true,0],9],
    [[[16026.3,7345.27,0],19.1746,11.3237,180.708,true,0],9],
    [[[16066.4,7386.02,0],11.6326,12.8546,28.3699,true,0],9],
    [[[16102.4,7362.84,0],11.6326,12.8546,28.3699,true,0],9],
    [[[16222.9,7624.41,2.75768],192.374,527.632,90.7038,true,0],8],
    [[[16653.4,6337.97,2.83354],371.3,1015.22,90.7038,true,0],8],
    [[[16917.9,7379.25,-0.516321],271.051,158.794,90.7038,true,0],8]
  ];
};
