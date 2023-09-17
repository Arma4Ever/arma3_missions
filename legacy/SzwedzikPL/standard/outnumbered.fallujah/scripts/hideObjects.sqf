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
  [[[3578.99,5749.12,0],2.6507,2.6507,0,false,0],15],
  [[[3572.18,5750.54,0],2.6507,2.6507,0,false,0],15],
  [[[3589.03,5751.16,0],2.6507,2.6507,0,false,0],15],
  [[[4365.24,4477.93,0],2.6507,2.6507,0,false,0],15],
  [[[4390.13,4456.47,0],9.6009,9.6009,0,false,0],15],
  [[[4372.04,4454.46,0],2.6507,2.6507,0,false,0],15],
  [[[4411.1,4430.07,0],2.6507,2.6507,0,false,0],15],
  [[[4419.84,4446.29,0],2.6507,2.6507,0,false,0],15],
  [[[4403.33,4472.35,0],2.6507,2.6507,0,false,0],15],
  [[[4430.19,4470.01,0],2.6507,2.6507,0,false,0],15],
  [[[4470.84,4399.8,0],2.6507,2.6507,0,false,0],15],
  [[[4441.56,4436.01,0],2.6507,2.6507,0,false,0],15],
  [[[4459.59,4417.25,0],2.6507,2.6507,0,false,0],15],
  [[[4442.37,4412.99,0],2.6507,2.6507,0,false,0],15],
  [[[4458.05,4456.59,0],2.6507,2.6507,0,false,0],15],
  [[[4475.54,4443.19,0],2.6507,2.6507,0,false,0],15],
  [[[4543.46,4401.6,0],2.6507,2.6507,0,false,0],15],
  [[[4498.27,4413.02,0],2.6507,2.6507,0,false,0],15],
  [[[4518.05,4417.62,0],2.6507,2.6507,0,false,0],15],
  [[[4488.15,4454.51,0],2.6507,2.6507,0,false,0],15],
  [[[4579.94,4377.86,0],2.6507,2.6507,0,false,0],15],
  [[[4578.4,4417.13,0],2.6507,2.6507,0,false,0],15],
  [[[4913.51,5199.41,0],2.6507,2.6507,0,false,0],15],
  [[[4890.09,5215.1,0],2.6507,2.6507,0,false,0],15],
  [[[4902.64,5245.1,0],2.6507,2.6507,0,false,0],15],
  [[[4887.65,5243.67,0],3.015,3.015,0,false,0],15],
  [[[4901.2,5255,0],2.6507,2.6507,0,false,0],15],
  [[[4879.03,5254.89,0],2.6507,2.6507,0,false,0],15],
  [[[4875.5,5244.19,0],2.6507,2.6507,0,false,0],15],
  [[[4886.41,5288.35,0],21.7612,19.7568,0,true,0],15],
  [[[4867.13,5248.23,0],4.7342,4.7342,0,false,0],15],
  [[[4902.33,5316.51,0],4.10627,4.10627,0,false,0],15],
  [[[4858.82,5316.81,0],4.10627,4.10627,0,false,0],15],
  [[[4861.51,5293.48,0],2.03034,2.03034,0,false,0],15]
];
