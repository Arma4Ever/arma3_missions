if (_player != player) exitWith {};

/***************************************
               Briefing
****************************************/

player createDiaryRecord [
    "Diary", [
        "Technikalia",
        localize "STR_Mission_Diary_Tech_Text"
    ]
];

player createDiaryRecord [
    "Diary", [
        "Ograniczenia dla lotnictwa",
        localize "STR_Mission_Diary_AirLimits_Text"
    ]
];

player createDiaryRecord [
    "Diary", [
        "Pojazdy",
        localize "STR_Mission_Diary_Vehicles_Text"
    ]
];

player createDiaryRecord [
    "Diary", [
        "Zadania",
        localize "STR_Mission_Diary_Tasks_Text"
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
