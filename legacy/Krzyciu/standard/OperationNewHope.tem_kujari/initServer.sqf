//Cywile są friendly dla wszystkich stron//
CIVILIAN setFriend [EAST , 1];
CIVILIAN setFriend [INDEPENDENT , 1];
CIVILIAN setFriend [WEST , 1];
trigger_check enableSimulation false;
trig_zal_1 setTriggerInterval 30;
trig_zal_2 setTriggerInterval 30;
trig_zal_3 setTriggerInterval 30;
trig_zal_4 setTriggerInterval 30;
{_x disableAI "PATH"}forEach ((getMissionLayerEntities "Players") select 0);

0 spawn {
[[switchableUnits, playableUnits] select isMultiplayer] call A3CS_fnc_jamSquadRadar;
sleep 65;
[[switchableUnits, playableUnits] select isMultiplayer, false, false] call A3CS_fnc_jamSquadRadar;
};

[amb_1, "Acts_Briefing_SB_Loop", 2, false] call ace_common_fnc_doAnimation;
[amb_2, "Acts_Briefing_SC_Loop", 2, false] call ace_common_fnc_doAnimation;
[amb_3, "Acts_Briefing_SA_Loop", 2, false] call ace_common_fnc_doAnimation;
[bomber, "Acts_CivilHiding_2", 2, false] call ace_common_fnc_doAnimation;
[worker_1, "Acts_carFixingWheel", 2, false] call ace_common_fnc_doAnimation;
