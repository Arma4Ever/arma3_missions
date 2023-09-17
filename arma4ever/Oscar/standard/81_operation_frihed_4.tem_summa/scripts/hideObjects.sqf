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
    [[[4254.75,1791.87,0],5,5,0,false,-1],15],
    [[[4360.21,525.871,0],5,5,0,false,-1],15],
    [[[4414.9,298.019,0],5,5,0,false,-1],15],
    [[[4399.78,334.669,0],5,5,0,false,-1],15],
    [[[4415.5,374.95,0],5,5,0,false,-1],15],
    [[[4389.13,506.828,0],5,5,0,false,-1],15],
    [[[4379.02,480.21,0],5,5,0,false,-1],15],
    [[[4429.54,309.199,0],5.72485,5.72485,0,false,0],15],
    [[[4418.49,351.242,0],5,5,0,false,-1],15],
    [[[4431.54,337.274,0],5,5,0,false,-1],15]
  ];
};
