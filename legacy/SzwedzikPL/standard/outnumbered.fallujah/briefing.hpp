/*
 * Briefing
 * Dokumentacja: https://community.bistudio.com/wiki/createDiaryRecord
 */

/*
    INFO: Jeśli chcesz użyć stringtable w briefingu, pamiętaj aby zamienić:
    & na &amp;
    < na &lt;
    > na &gt;
    " na &quot;
    ' na &apos;

    Wtedy możesz smiało użyć stringtable (przykład w stringtable.xml) i zamienić wpis
    briefingu na "player createDiaryRecord ["Diary", ["Briefing", LLSTRING(Briefing)]];"
    "
*/

player createDiaryRecord [
    "Diary", [
        "Legenda mapy",
        localize "STR_Mission_Diary_MapLegend_Text"
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
        localize "STR_Mission_Diary_Gear_Title",
        localize "STR_Mission_Diary_Gear_Text"
    ]
];

player createDiaryRecord [
    "Diary", [
        "Przeciwnik",
        localize "STR_Mission_Diary_Enemy_Text"
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
        localize "STR_Mission_Diary_Intro_Title",
        localize "STR_Mission_Diary_Intro_Text"
    ]
];
