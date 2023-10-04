//Cywile są friendly dla wszystkich stron//
CIVILIAN setFriend [EAST , 1];
CIVILIAN setFriend [INDEPENDENT , 1];
CIVILIAN setFriend [WEST , 1];

{_x disableAI "PATH"}forEach ((getMissionLayerEntities "Players") select 0);
{createSimpleObject ["CUP_t_picea2sW", getPosASL _x, false]} forEach [tree_0,tree_1,tree_2,tree_3,tree_4,tree_5,tree_6,tree_7,tree_8,tree_9,tree_10,tree_11,tree_12];

zal_mort_1 setTriggerInterval 60;
zal_mort_2 setTriggerInterval 60;
zal_mort_3 setTriggerInterval 60;

[rep_1, "Acts_AidlPsitMstpSsurWnonDnon01", 2] call ace_common_fnc_doAnimation;
[rep_2, "Acts_ExecutionVictim_Loop", 2] call ace_common_fnc_doAnimation;

0 spawn {
[[switchableUnits, playableUnits] select isMultiplayer] call A3CS_fnc_jamSquadRadar;
sleep 65;
[[switchableUnits, playableUnits] select isMultiplayer, false, false] call A3CS_fnc_jamSquadRadar;
};
