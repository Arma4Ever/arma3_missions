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
"Informacje od MM",
"
<br />
<br />
<font size='16'>

<br />
1. Ogólne
<br />
- Unikajcie wykrycia (przez wietkong) za wszelką cenę. Cywile nie powinni alarmować wietkongu. Zwróćcie uwagę: AI reagują na poziom głośności TFAR (mówcie szeptem!) oraz na hałas od biegania. Cierpliwość popłaca!<br/>
- NIE WSZYSTKIE BRONIE SĄ WYTŁUMIONE! Karabin maszynowy i karabinki szturmowe nie posiadają tłumików! Jeden missfire może was pogrążyć!!!<br/>
- Po zwinięciu obozu utracicie dostęp do przezbrojenia. Jeżeli pozostawicie coś w obozie a patrol wietkongu natrafi na te przedmioty może wam to zaszkodzić,<br/>
<br />
2. Intel
<br />
- Na misji jest sporo intelu. Interakcji szukajcie na postaciach (również zabitych), dokumentach 'wywiadowczych' (mapy, teczki, zdjęcia etc.), przedmiotach ogólnowojskowych etc. itd. itp.<br/>
- Przed sprawdzeniem nowej interakcji z jakąś postacią poczekajcie, aż znikną napisy z poprzedniej interakcji,<br/>
- Wszelkie przedmioty 'fabularne' są dynamiczne. Albo mają interakcję ACE, albo możecie 'zajrzeć do skrzyni'. Jeżeli coś nie ma interakcji ACE lub nie jest skrzynią to jest to tylko ozdoba,<br/>
<br />
3. Zadania
<br />
- Zadania powinny zaliczać się automatycznie,<br/>
<br />
4. Rozmówki po wietnamsku
<br />
- Niektórzy gracze znają wietnamski (losowo, 4 postacie). Informację o znajomości wietnamskiego znajdziecie w opisie postaci. Gracze rozumiejący wietnamski mogą mieć dodatkowe interakcje na niektórych przedmiotach lub postaciach. Nie bójcie się używać interakcji, niezależnie od tego czy wasza postać zna czy nie zna język. Misja jest grywalna nawet w przypadku śmierci wszystkich graczy 'językowych',<br/>
<br />
5. Gońcy
<br />
Gońcy posiadają jako jedyni krótkie radia o zasięgu do 1000 m.
<br />

</font>
"
]
];



player createDiaryRecord [
"Diary", [
"E) Dostępne środki i zaopatrzenie",
"
Dysponujecie tylko tym, co znajduje się w rozbitym przez was obozie. Znajdujecie się zbyt daleko wgłąb wrogiego terenu, aby dostarczyć wam wyposażenie.
<br />
<br />
Wsparcie:
Brak<br />
<br />
<br />
Pojazdy:
Brak<br />
<font size='16'>
</font>
"
]
];

player createDiaryRecord [
"Diary", [
"D) Cywile",
"
<br />
<br />
<font size='16'>Lokalna ludność jest generalnie negatywnie nastawiona do sił USA oraz rządu Południowego Wietnamu. Podejrzewamy, że cywile wspierają siły wietkongu. Być może uda wam się przekonać ich do udzielenia dodatkowych informacji na temat partyzantów lub znajdziecie w wioskach materiały wywiadowcze.
</font>
"
]
];


player createDiaryRecord [
"Diary", [
"C) Przeciwnik",
"
<br />
<br />
<font size='16'>Bojownicy wietkongu. Partyzanci wykształcili struktury kontrwywiadowcze specjalizujące się w tropieniu oddziałów MACV-SOG. Poruszajcie się ostrożnie!
</font>
"
]
];


player createDiaryRecord [
"Diary", [
"B) Sytuacja w rejonie",
"
<br />
<br />
<font size='16'>Aktualnie znajdujecie się w obozie, pośrodku dżungli. Ostatnie 3 dni przekradaliście się przez dżunglę omijając pułapki i patrole wietkongu. Pamiętajcie, aby zwinąć obóz przed wyruszeniem (Interakcja). Wróg porozstawiał w dżungli liczne pułapki ''punji''.
</font>
"
]
];

player createDiaryRecord [
"Diary", [
"A) Briefing",
"
<br />
<br />
<font size='16'>
Coraz więcej żołnierzy na patrolach ginie w wyniku ataków partyzantów Wietkongu. Według ustaleń naszego wywiadu w sektorze Alfa-Charlie-7, stanowiący wasz docelowy obszar działań, bojownicy mają rozwiniętą infrastrukturę. Wietnamczycy bardzo dobrze maskują swoje pozycje, dlatego musicie dotrzeć w rejon działań niespostrzeżenie. Łódź patrolowa wysadzi was na brzegu rzeki ok. 100 km od strefy działań. Przenikniecie niewykryci do strefy operacji, poruszając się gęstą dżunglą. Na miejscu przeprowadzicie rozpoznanie 3 wiosek, szukając oznak współpracy lokalnej ludności z bojownikami. Jeżeli potwierdzicie kontakty cywilów z żołnierzami Wietkongu, zakradnijcie się do wioski i spróbujcie wydobyć jak najwięcej informacji. Unikajcie otwartej konfrontacji za wszelką cenę, chyba że to nieuniknione. <br/><br/>
Waszym głównym zadaniem jest infiltracja sztabu wroga. Jeżeli uda wam się dostać do tuneli będziecie w stanie zadać potężny cios dywersantom naszych działań. Wyczyśćcie wrogi sztab od środka i zabezpieczcie wszelkie materiały, jakie uda wam się znaleźć.
<br /><br />
W przypadku odkrycia wrażliwych zasobów: składów amunicji, ciężkiego sprzętu, pojazdów i tym podobnych macie dodatkowo zniszczyć wrogie zasoby.
</font>
"
]
];
