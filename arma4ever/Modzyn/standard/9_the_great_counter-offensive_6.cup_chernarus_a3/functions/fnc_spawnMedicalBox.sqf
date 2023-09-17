#include "script_component.hpp"

private _class = "a4es_medical_crateBig";
private _inventory = [["ACE_fieldDressing",50],["ACE_morphine",4],["ACE_epinephrine",4],["ACE_tourniquet",22],["ACE_splint",11],["ACE_packingBandage",25],["ACE_elasticBandage",25],["ACE_salineIV",2],["ACE_salineIV_500",6],["ACE_salineIV_250",11],["ACE_personalAidKit",11],["A4ES_painkillers",6],["A4ES_emptyBloodBag",2]];
private _pos = [2446.44,5130.07,0.8];

[_class, _inventory, _pos] spawn FUNC(spawnBox);