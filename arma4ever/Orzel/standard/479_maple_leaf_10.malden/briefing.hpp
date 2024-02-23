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
- Sloty rezerwowe są dostępne od pełnych godzin, tj. od godziny 21:00 można dołączyć na sloty rezerwowe przeznaczone dla godziny 21:00 (podpisane w lobby), następnie od 22:00 można dołączać na sloty dla tej godziny, a na końcu odblokowane są sloty od godziny 23:00. Nie ma systemu, który by te sloty odblokowywał, więc proszę nie wchodzić na sloty przed godzinami. Osoby, które wejdą na slot rezerwy przeznaczony na późniejszą godzinę, niż jest, zostaną zakutę w kajdany do godziny odblokowania danej drużyny posiłków. Sloty są podpisane według specjalizacji (medyk, inżynier, załogant), ale poza tym pozostają nieznane. Rezerwa powinna się zameldować dowódcy operacji o tym, że przybywają, jakie mają specjalnie wyposażenie (pojadzy, staticy, cokolwiek) oraz jaka jest ich liczebność.
<br />
- Nie ma komputera artyleryjskiego
<br />
- Przezbrojenie moździerza jest dostępne jako interakcja ace na skrzynce przed artylerzystami na starcie misji. 
<br />
- Czas 1x
<br />
- GPS mają dowódcy drużyn wzwyż.
<br />
- Zaopatrzenie na starcie, dodatkowe zaopatrzenie mogą przywieźć posiłki.
<br />
- Zadania zaliczają się według uznania dowódcy operacji.
<br />
- Radia posiadają wszyscy.
<br />
- Skrzynka zajmuje 4 miejsca cargo, zamiast standardowych 2, ale zwiększone są pojemności pojazdów kilkukrotnie.
<br />
- Land Rover HQ ma właściwości pojazdu naprawczego.
<br />
- Przezbrojenie dla pojazdów znajduje się przed pojazdami. Dla TOW jest to drewniana, brązowa skrzynka. TOWa można przezbroić raz. Dla reszty pojazdów są to małe, zielone skrzynki. Każdy pojazd z takiej skrzynki również można przezbroić tylko raz. 
</font>
"
]
];


player createDiaryRecord [
"Diary", [
"Meteo",
"
<font size='16'>
24.11.1992 14:00 czasu lokalnego
<br />
Warunki pogodowe są niekorzystne, przewidywana jest lekka burza podczas nadchodzących godzin.

</font>
"
]
];

player createDiaryRecord [
"Diary", [
"Siły wroga",
"
<font size='16'>Spodziewamy się regularnej armii wojsk Czarnorusi w rozmiarze kompanii. Wróg zdążył się już okopać.
</font>
"
]
];

player createDiaryRecord [
"Diary", [
"Siły własne",
"
<font size='16'>Pluton zmechanizowany wojsk kanadyjskich z dołączoną baterią moździerza i załogą TOW na pojeździe.  Kompania jest w stanie dostarczyć nam dodatkowe siły, jednak na ten moment reszta plutonów związana jest walką na innych obszarach wyspy.

</font>
"
]
];

player createDiaryRecord [
"Diary", [
"Sytuacja",
"
<font size='16'>W ramach wspólnej operacji NATO przeciw Czarnorusi na wyspę Malden wysłane zostały wojska kanadyjskie w celu przejęcia kluczowych złóż strategicznych zasobów, które się na tej wyspie znajdują. Inwazja trwa już kilka dni, a my przemy dalej. Zadaniem naszego plutonu jest przejęcie sztabu polowego przeciwnika, który operuje gdzieś w rejonie działań naszego plutonu. 

</font>
"
]
];

