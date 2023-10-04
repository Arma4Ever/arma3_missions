#include "script_component.hpp"

params ["_fidelity","_distance"];

private _sound = playSound QGVAR(Blizzard);

while {missionNamespace getVariable ["Blizzard", false]} do {

    for "_d" from 2.2 to _distance step _fidelity do {

          private _pos = ATLtoASL positionCameraToWorld [0,0,0];
          private _hpos =+ _pos;
          _hpos set [2,(_pos #2)+20];


          private _height = (_distance - _d + 2) min 15;
          if (speed player > 30) then {_height = 8;};

          private _dpos = [
                ((_pos #0) + (_d - (random (2*_d))) + (velocity vehicle player #1)),
                ((_pos #1) + (_d - (random (2*_d))) + (velocity vehicle player #0)),
                (_pos #2) + _height
            ];

          private _hdpos =+ _dpos; _hdpos set [2,(_dpos #2) + 20];

          private _ldpos =+ _dpos; _ldpos set [2,(_pos #2)+0.1];

          if (!lineIntersects [_dpos, _hdpos] || {(_hpos distance2D _hdpos > 7) && (lineIntersects [_pos,_hpos])}) then {

              private _ttl = (_height*8);
              private _surfaces = lineIntersectsSurfaces [_dpos,_ldpos,player,player,true,1];
              private _size = (0.09 + (random 0.05));
              private _vel = (_size*3)*0.1;
              if (count _surfaces > 0) then {

                    private _surfHeight = _surfaces #0 #0 #2;
                    private _dist = (_dpos #2) - _surfHeight;
                    _ttl = ((_dist / _vel) * 0.2) min (_height * 0.3);

                };
                private _1 = ["A3\Data_F\ParticleEffects\Universal\Universal", 16, 12, 8, 1];
                drop [
                _1,
                "",
                "Billboard",
                1,
                _ttl,
                ASLToATL _dpos,
                [0,0, 0 - _vel],
                0.1,
                0.0000001,
                0.000,
                1,
                [_size],
                [[1,1,1,1], [1,1,1,1], [1,1,1,1], [1,1,1,1]],
                [0,0],
                0.2,
                1.6,
                "",
                "",
                ""];

                drop [
                _1,
                "",
                "Billboard",
                1,
                _ttl,
                ASLToATL _dpos,
                [0,0, 0 - _vel],
                0.1,
                0.0000001,
                0.000,
                1,
                [_size],
                [[1,1,1,0.9], [1,1,1,0.9], [1,1,1,0.9], [1,1,1,0.9]],
                [0,0],
                0.3,
                1.2,
                "",
                "",
                ""];
            };
        };
    sleep 0.1;
};
