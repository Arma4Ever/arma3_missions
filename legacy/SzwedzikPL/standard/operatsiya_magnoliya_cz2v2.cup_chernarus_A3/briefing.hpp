/*
 * Briefing
 * Dokumentacja: https://community.bistudio.com/wiki/createDiaryRecord
 */

 player createDiaryRecord [
     "Diary", [
         "Interakcje",
         localize "STR_Mission_Diary_Interaction_Text"
     ]
 ];

player createDiaryRecord [
    "Diary", [
        "Technikalia",
        localize "STR_Mission_Diary_Tech_Text"
    ]
];

player createDiaryRecord [
    "Diary", [
        "Briefing",
        localize "STR_Mission_Diary_Brief_Text"
    ]
];

player createDiaryRecord [
    "Diary", [
        localize "STR_Mission_Diary_Intro",
        localize "STR_Mission_Diary_Intro_Text"
    ]
];
