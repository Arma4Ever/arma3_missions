_pozycje = _this select 0;

_grupaOkop = createGroup civilian;
_klasyJed = ["LIB_US_101AB_NCO_para","LIB_US_101AB_FC_rifleman_para","LIB_US_101AB_FC_rifleman_para","LIB_US_101AB_mgunner_para","LIB_US_101AB_mgunner_assistant_para","LIB_US_101AB_corporal_para","LIB_US_101AB_rifleman_para","LIB_US_101AB_rifleman_para","LIB_US_101AB_rifleman_para","LIB_US_101AB_rifleman_para","LIB_US_101AB_rifleman_para","LIB_US_101AB_rifleman_para","LIB_US_101AB_FC_rifleman_para"];
_soldaten = nil;
_posture = ["MIDDLE", "UP"];
{
_jedDoSpawnu = selectRandom _klasyJed;
_jedDoSpawnu createUnit [[0,0], _grupaOkop,"_soldaten = this"];
_soldaten setPos (getPos _x);
_isStanding = selectRandom _posture; 
_soldaten setUnitPos _isStanding;
_soldaten setDamage 1;
sleep 0.1;} forEach _pozycje;
