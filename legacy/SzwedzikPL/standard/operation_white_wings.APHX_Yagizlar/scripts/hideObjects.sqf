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
  [[[1880.95,319.172,0],13.4204,13.5122,0,false,0],14],
  [[[1860.88,4016.29,0],3.129,3.129,357.095,false,0],15],
  [[[444.261,2697.33,0],8.951,28.754,127.654,false,0],14],
  [[[1306.45,2806.02,0],6.67299,7.91447,346.797,false,0],14],
  [[[1614.02,1570.34,0],8.648,5,147.919,false,0],15],
  [[[2213.26,172.603,0],13.4204,13.5122,0,false,0],14],
  [[[551.371,2470.49,0],8.764,9.559,223.067,false,0],14],
  [[[1086.25,2760.87,0],8.648,4.205,353.972,false,0],15],
  [[[1678.01,4251.06,0],3,3,23.144,false,0],14],
  [[[847.148,1779.39,0],6.673,6.213,346.797,false,0],14],
  [[[1704.32,4325.67,0],0.945736,0.945736,23.144,false,0],4],
  [[[1697.03,4324.13,0],0.945736,0.945736,23.144,false,0],4],
  [[[1690.89,4323.68,0],2.16998,2.16998,23.144,false,0],4],
  [[[1687.79,4320.13,0],0.945736,0.945736,23.144,false,0],4],
  [[[2479.57,349.647,0],13.4204,13.5122,0,false,0],14],
  [[[1720.52,2444.41,0],1.18085,1.18085,357.095,false,0],14],
  [[[905.831,2694.8,0],6.67299,7.91447,346.797,false,0],14],
  [[[2540.51,1051.5,0],8.648,4.205,111.286,false,0],15],
  [[[2542.93,4677.44,0],5.69092,5.78271,0,false,0],14],
  [[[3949.42,908.688,0],7.983,7.107,346.797,false,0],14],
  [[[3712.15,3983.71,0],8.951,28.754,23.1443,false,0],14],
  [[[4026.08,365.549,0],13.4204,13.5122,0,false,0],14],
  [[[4393.53,1844.8,0],13.4204,13.5122,0,false,0],14],
  [[[4549.98,3702.89,0],13.42,13.512,0,false,0],14],
  [[[3802.03,725.617,0],13.4204,13.5122,0,false,0],14],
  [[[3631.75,2322.28,0],5.69092,5.78271,0,false,0],14],
  [[[4178.22,1861.59,0],13.4204,13.5122,0,false,0],14],
  [[[4770.63,3642.29,0],13.4204,13.5122,0,false,0],14],
  [[[3901.26,565.118,0],13.4204,13.5122,0,false,0],14],
  [[[3903.86,1639.92,0],13.4204,13.5122,0,false,0],14],
  [[[4824.76,4806.88,0],60,60,0,false,0],15],
  [[[3922.3,2047.72,0],13.4204,13.5122,0,false,0],14]
];
