if (_player != player) exitWith {};

/***************************************
               Briefing
****************************************/

player createDiaryRecord [
    "Diary", [
        "Cele naziemne (dla lotnictwa)",
        localize "STR_Mission_Diary_GroudTargets"
    ]
];

player createDiaryRecord [
    "Diary", [
        "Technikalia",
        localize "STR_Mission_Diary_Tech"
    ]
];

player createDiaryRecord [
    "Diary", [
        "Zadania dodatkowe",
        localize "STR_Mission_Diary_ExtraTasks"
    ]
];

player createDiaryRecord [
    "Diary", [
        "Zadania priorytetowe",
        localize "STR_Mission_Diary_PrioTasks"
    ]
];

player createDiaryRecord [
    "Diary", [
        "Briefing",
        localize "STR_Mission_Diary_Brief"
    ]
];

player createDiaryRecord [
    "Diary", [
        "Wstep",
        localize "STR_Mission_Diary_Intro"
    ]
];
