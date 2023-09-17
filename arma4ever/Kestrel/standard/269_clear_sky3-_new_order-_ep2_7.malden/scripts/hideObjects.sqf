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
  [[[1001,11798.5,0],300,300,0,false,0],15],
  [[[636.031,12118.2,0],20,20,0,false,0],12],
  [[[633.53,12150.4,0],20,20,0,false,0],12],
  [[[738.977,12245.2,0],100,100,0,false,0],12],
  [[[752.533,12084.2,0],20,20,0,false,0],12],
  [[[931.363,12236,0],100,100,0,false,0],12],
  [[[3009.01,7168.26,0],5,5,0,false,-1],15],
  [[[2969,7161.27,0],5,5,0,false,-1],15],
  [[[2968.55,7172.94,0],5,5,0,false,-1],15],
  [[[2953.83,7203.67,0],5,5,0,false,-1],15],
  [[[2981.14,7147.3,0],5,5,0,false,-1],15],
  [[[2995.12,7143.31,0],5,5,0,false,-1],15],
  [[[5022.61,3919.93,0],5,5,0,false,-1],15],
  [[[5018.35,4068.96,0],50,10,215.607,false,0],15],
  [[[5028.82,3968.52,0],5,5,0,false,-1],15],
  [[[5047.93,3985.97,0],5,5,0,false,-1],15],
  [[[5027.64,4079.08,0],50,10,215.607,false,0],15],
  [[[5030.31,4083.55,0],50,10,215.607,false,0],15],
  [[[5046.73,4086.33,0],50,10,215.607,false,0],15],
  [[[5056.71,3980.11,0],5,5,0,false,-1],15],
  [[[5056.5,3989.63,0],5,5,0,false,-1],15],
  [[[5065.55,3993.03,0],5,5,0,false,-1],15],
  [[[5067.25,3985.57,0],5,5,0,false,-1],15],
  [[[5056.75,4000.04,0],5,5,0,false,-1],15],
  [[[5053.5,4046.79,0],50,10,215.607,false,0],15],
  [[[5067.29,4065.07,0],50,10,215.607,false,0],15],
  [[[5096.55,4029.81,0],50,10,215.607,false,0],15],
  [[[5084.41,4079.59,0],50,10,215.607,false,0],15],
  [[[4952.34,3965.57,0],5,5,0,false,-1],15],
  [[[5118.02,4036.43,0],50,10,215.607,false,0],15],
  [[[5103.02,4061.69,0],50,10,215.607,false,0],15],
  [[[5103.04,4085.2,0],50,10,215.607,false,0],15]
];
