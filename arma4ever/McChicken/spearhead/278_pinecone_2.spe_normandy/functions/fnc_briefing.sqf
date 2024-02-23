/*
animated briefing by McChicken
more info: https://community.bistudio.com/wiki/Arma_3:_Animated_Briefing
For MP missions some BIS functions may require rewriting with harness of local commands
0 spawn mission_fnc_briefing;
*/


private _timeline =
[
  [0, { [markerSize "kwestia-0", markerPos "kwestia-0", 1] call BIS_fnc_zoomOnArea}],
	[2,	 {[markerSize "kwestia-1", markerPos "kwestia-1", 3] call BIS_fnc_zoomOnArea; BIS_fnc_AnimatedBriefing_speaker1 say2D "mission_briefing_1";}	], //koniec: 15.5s
	[7.5,	{"A4ECOMMANDER" setMarkerAlphaLocal 1; ["A4ECOMMANDER", 1, 1] call spe_missionUtilityFunctions_fnc_blinkMarker_local;}],
  [8,	  {"ABLE" setMarkerAlphaLocal 1; ["ABLE", 1, 1] call spe_missionUtilityFunctions_fnc_blinkMarker_local;}],
	[8.8,	{"BAKER" setMarkerAlphaLocal 1;  ["BAKER", 1, 1] call spe_missionUtilityFunctions_fnc_blinkMarker_local; }],
  [9.5, { "CHARLIE" setMarkerAlphaLocal 1;  ["CHARLIE", 1, 1] call spe_missionUtilityFunctions_fnc_blinkMarker_local;}],
  [11.1,{ "DOG" setMarkerAlphaLocal 1;  ["DOG", 1, 1] call spe_missionUtilityFunctions_fnc_blinkMarker_local;}],
  [12.7,{"CZOLG" setMarkerAlphaLocal 1; ["CZOLG", 1, 1] call spe_missionUtilityFunctions_fnc_blinkMarker_local; }], //15.5s - koniec pierwszej kwestii
  [15,  { [markerSize "kwestia-2", markerPos "kwestia-2", 3] call BIS_fnc_zoomOnArea}],
  [20,  {BIS_fnc_AnimatedBriefing_speaker1 say2D "mission_briefing_2"; ["marker_3", 3, 5] call spe_missionUtilityFunctions_fnc_blinkMarker_local; "marker_3" setMarkerAlphaLocal 1; }],
  [27,	{ ["marker_49", 1, 1] spawn spe_missionUtilityFunctions_fnc_blinkMarker_local; "marker_49" setMarkerAlphaLocal 1; }],
  [28,	{ ["marker_50", 1, 1] spawn spe_missionUtilityFunctions_fnc_blinkMarker_local; "marker_50" setMarkerAlphaLocal 1; }],
  [29,	{ ["marker_51", 1, 1] spawn spe_missionUtilityFunctions_fnc_blinkMarker_local; "marker_51" setMarkerAlphaLocal 1; }],
  [30,	{ ["marker_52", 1, 1] spawn spe_missionUtilityFunctions_fnc_blinkMarker_local; "marker_52" setMarkerAlphaLocal 1; }],
  [31,	{ ["marker_53", 1, 1] spawn spe_missionUtilityFunctions_fnc_blinkMarker_local; "marker_53" setMarkerAlphaLocal 1; }],
  [32,	{ ["marker_54", 1, 1] spawn spe_missionUtilityFunctions_fnc_blinkMarker_local; "marker_54" setMarkerAlphaLocal 1; }],
  [37,{BIS_fnc_AnimatedBriefing_speaker1 say2D "mission_briefing_3";}], //KONIEC KWESTII 2, początek 3
  [50,{[markerSize "kwestia-5", markerPos "kwestia-5", 3] call BIS_fnc_zoomOnArea;}],
  [50.1,{ ["marker_57", 1, 5] spawn spe_missionUtilityFunctions_fnc_blinkMarker_local;}],
  [53,{BIS_fnc_AnimatedBriefing_speaker1 say2D "mission_briefing_4"; "marker_49" setMarkerAlphaLocal 0;"marker_50" setMarkerAlphaLocal 0;"marker_54" setMarkerAlphaLocal 0;"marker_51" setMarkerAlphaLocal 0;"marker_52" setMarkerAlphaLocal 0;"marker_53" setMarkerAlphaLocal 0;"marker_3" setMarkerAlphaLocal 0; }], //KONIEC KWESTII 3, początek 4
  [59.5,{BIS_fnc_AnimatedBriefing_speaker1 say2D "mission_briefing_5"; }], //KONIEC KWESTII 4, początek 5
  [61,{"marker_57" setMarkerAlphaLocal 0; ["ABLE", [1124,11848], 3, 4] SPAWN spe_missionUtilityFunctions_fnc_moveMarker_local; ["BAKER", [1120,11785], 3, 4] SPAWN spe_missionUtilityFunctions_fnc_moveMarker_local; ["A4ECOMMANDER", [1074.47,11857.3], 3, 4] SPAWN spe_missionUtilityFunctions_fnc_moveMarker_local; } ],
  [63,{ "strzalka_1" setMarkerAlphaLocal 1; ["strzalka_1", 2, 10] call spe_missionUtilityFunctions_fnc_blinkMarker_local; "strzalka_2" setMarkerAlphaLocal 1; ["strzalka_2", 2, 10] call spe_missionUtilityFunctions_fnc_blinkMarker_local;}],
  [67.5,{}],//KONIEC KWESTII 5
  [68,{[markerSize "kwestia-6", markerPos "kwestia-6", 3] call BIS_fnc_zoomOnArea;}],
  [71,{BIS_fnc_AnimatedBriefing_speaker1 say2D "mission_briefing_6";["marker_58", 1, 5] spawn spe_missionUtilityFunctions_fnc_blinkMarker_local;}], //początek kwestii 6
  [76.5,{BIS_fnc_AnimatedBriefing_speaker1 say2D "mission_briefing_7";}], //kwestia 7 start, 13s
  [78,{"marker_62" setMarkerAlphaLocal 1; "marker_63" setMarkerAlphaLocal 1;}],
  [61,{"marker_57" setMarkerAlphaLocal 0; ["DOG", [1360,11204], 5, 4] SPAWN spe_missionUtilityFunctions_fnc_moveMarker_local; ["CZOLG", [1328.52,11187.9], 7, 4] SPAWN spe_missionUtilityFunctions_fnc_moveMarker_local;  ["CHARLIE", [1324,11232], 5, 4] SPAWN spe_missionUtilityFunctions_fnc_moveMarker_local;}],
  [82.5,{ "strzalka_3" setMarkerAlphaLocal 1; ["strzalka_3", 2, 5] call spe_missionUtilityFunctions_fnc_blinkMarker_local; "strzalka_4" setMarkerAlphaLocal 1; ["strzalka_4", 2, 5] call spe_missionUtilityFunctions_fnc_blinkMarker_local; "strzalka_5" setMarkerAlphaLocal 1; ["strzalka_5", 2, 5] call spe_missionUtilityFunctions_fnc_blinkMarker_local; "strzalka_6" setMarkerAlphaLocal 1; ["strzalka_6", 2, 5] call spe_missionUtilityFunctions_fnc_blinkMarker_local;}],
  [86.5,{"marker_60" setMarkerAlphaLocal 1; "marker_61" setMarkerAlphaLocal 1; ["marker_60", 2, 5] spawn spe_missionUtilityFunctions_fnc_blinkMarker_local;["marker_61", 2, 5] spawn spe_missionUtilityFunctions_fnc_blinkMarker_local;}],
  [90,{[markerSize "kwestia-2", markerPos "kwestia-2", 1] call BIS_fnc_zoomOnArea; "marker_60" setMarkerAlphaLocal 0;"marker_61" setMarkerAlphaLocal 0;"marker_62" setMarkerAlphaLocal 0;"marker_63" setMarkerAlphaLocal 0; "A4ECOMMANDER" setMarkerAlphaLocal 0; }],
  [93,{BIS_fnc_AnimatedBriefing_speaker1 say2D "mission_briefing_8"; ["strzalka_2", 2, 5] call spe_missionUtilityFunctions_fnc_blinkMarker_local; ["strzalka_6", 2, 5] call spe_missionUtilityFunctions_fnc_blinkMarker_local; }], //kwestia 8 start 14s
  [98,{ ["ABLE", [1731.95,11851.5], 3, 4] SPAWN spe_missionUtilityFunctions_fnc_moveMarker_local;["BAKER", [1723.62,11841.5], 3, 4] SPAWN spe_missionUtilityFunctions_fnc_moveMarker_local}],
  [107,{BIS_fnc_AnimatedBriefing_speaker1 say2D "mission_briefing_9";}], //koniec 8 poczatek 9 kwestii 14.5sek
  [108,{["CZOLG", [1736,11792], 5, 4] SPAWN spe_missionUtilityFunctions_fnc_moveMarker_local;["DOG", [1724,11804], 5, 4] SPAWN spe_missionUtilityFunctions_fnc_moveMarker_local;["CHARLIE", [1724,11772], 5, 4] SPAWN spe_missionUtilityFunctions_fnc_moveMarker_local;  }],
  [121.5,{BIS_fnc_AnimatedBriefing_speaker1 say2D "mission_briefing_10";}], //koniec 9 poczatek 10 kwestii
  [121.6, { [markerSize "kwestia-0", markerPos "kwestia-0", 5] call BIS_fnc_zoomOnArea}],
  [146.5,{BIS_fnc_AnimatedBriefing_speaker1 say2D "mission_briefing_11";}],
  [149,{BIS_fnc_AnimatedBriefing_speaker1 say2D "mission_briefing_12";}], //koniec kwestii 10
  [150,{BIS_fnc_AnimatedBriefing_speaker1 say2D "mission_briefing_13";}],
  [155,{}]
];

private _showMarkers = (getMissionLayerEntities "showAtEnd") select 1;

[_timeline, 0, nil, ((getMissionLayerEntities "showAtEnd") select 1), _showMarkers, "kwestia-0"] spawn BIS_fnc_animatedBriefing;

waitUntil { sleep 2; !(missionNamespace getVariable "BIS_fnc_eventTimeline_playing"); };



private _hideMarkers = (getMissionLayerEntities "hideAtEnd") select 1;

{
_x setMarkerAlphaLocal 0;
} forEach _hideMarkers;

private _showMarkers = (getMissionLayerEntities "showAtEnd") select 1;

{
_x setMarkerAlpha 1;
} forEach _showMarkers
