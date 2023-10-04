#include "script_component.hpp"

params ["_unit"];

sleep random 5;

private _pos = _this selectionPosition "Neck";
private _breath = "#ParticleSource" createVehicleLocal [0,0,0];
_breath setPos getPos _this;
_breath setParticleparams [["\Ca\data\particleEffects\universal\universal.p3d", 16, 12, 13, 0], "", "Billboard", 0.5, 0.5, [_pos select 0, (_pos select 1) + 0.15, _pos select 2], [0, 0.2, -0.2], 1, 1.275, 1, 0.2, [0, 0.2, 0], [[1, 1, 1, 0.01], [1, 1, 1, 0.01], [1, 1, 1, 0]], [1000], 1, 0.04, "", "", _this];
_breath setParticlerandom [2, [0, 0, 0], [0.25, 0.25, 0.25], 0, 0.5, [0, 0, 0, 0.1], 0, 0, 10];
_breath setDropInterval 0.002;

sleep (0.5 + random 0.3);
deletevehicle _breath;
