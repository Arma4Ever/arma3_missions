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
    [[[20087.5,14411.5,0],5,5,0,false,-1],15]
  ];
};
