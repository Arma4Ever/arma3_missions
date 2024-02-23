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
"Technikalia",
"
<font size='16'>
- Nie ma rezerwy
<br />
- Nie ma radia
<br />
- Czas 1x
<br />
- Nie ma komputera artyleryjskiego
<br />
- Zaopatrzenie jedynie na starcie, amunicja jest kompatybilna z wrogą amunicją.
<br />
- Zadania zaliczają się według uznania dowódcy operacji.
<br />
- Zadanie #2 ma szereg podzadań, które ujawnią się w trakcie operacji. Podzadania związane są z zabezpieczeniem przeprawy oraz są obowiązkowe do pozytywnego ukończenia misji.
</font>
"
]
];

player createDiaryRecord [
"Diary", [
"Stopnie",
"
<font size='16'>
Luutnantti - Porucznik
<br />
Kersantti - Sierżant
<br />
Alikersantti - St. Kapral
<br />
Korpraali - Kapral
<br />
Sotamies - Szeregowy
<br />
</font>
"
]
];

player createDiaryRecord [
"Diary", [
"Obsługa kompasu Suunto M/34",
"
<font size='16'>
Niestety oryginalna funkcjonalność kompasu nie jest odwzorowana, ale z kompasu dalej można korzystać. Aby wyznaczyć stopień(?) na mapie, w którego kierunku chcemy, aby ktoś się spojrzał wystarczy wyciągnąć kompas, spojrzeć się w danym kierunku, a następnie zwrócić uwagę na czerwoną igłę na kompasie. Następnie należy odjąć liczbę, na której zatrzymała się igła od 60, co da nam stopień(?), na którym się znajduje dany obiekt. Przykład: Jeśli spojrzymy w lewo o 5 stopni(?) to igła zatrzyma się na liczbie 55. Odejmując 55 od 60 wyjdzie nam 5, co będzie stopniem(?), na którym się znajduje dany obiekt od naszej pozycji.
</font>
"
]
];

player createDiaryRecord [
"Diary", [
"Siły wroga",
"
<font size='16'>Jednostki rozpoznania Związku Radzieckiego, wraz z pojazdami. Lekka piechota Związku Radzieckiego wraz z wsparciem ogniowym z moździerzy oraz ciężkich dział. Garnizon wspierany jest przez jednostki pancerne.

</font>
"
]
];

player createDiaryRecord [
"Diary", [
"Siły własne",
"
<font size='16'>Pluton lekkiej piechoty z dołączoną baterią moździerza 81mm z plutonu wsparcia ogniowego naszej kompanii.

</font>
"
]
];

player createDiaryRecord [
"Diary", [
"Sytuacja",
"
<font size='16'>18 Maja 1944 roku o godzinie 4:00 ma rozpocząć się ofensywa naszej dywizji na Radzieckie pozycje w pobliżu miejscowości Olhava. Celem ofensywy jest przejęcie mostu w miejscowości, który stanowi jedyną drogę przez rzekę dla naszych pojazdów logistycznych. Ze względu na swoją wartość strategiczną most jest dobrze chroniony przez siły Radzieckie. 

</font>
"
]
];

