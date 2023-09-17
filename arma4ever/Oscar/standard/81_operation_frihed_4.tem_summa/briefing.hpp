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
"Wstęp",
"
<font size='16'>Federacja Rosyjska w związku z bardzo dużymi stratami na froncie ukraińskim oraz problemami gospodarczo-wydobywczymi nie była w stanie spełnić norm dotyczących produkcji metali ciężkich oraz żelaza. 
Finlandia oraz Szwecja, które nie znajdowały się w sojuszu NATO zostały 27.09.2023 zaatakowane w związku z ogromnymi złożami ww. minerałów. 
<br />
<br />
Rosjanie uznali, że najlepszym taktycznie sposobem będzie desant powietrzny kilku batalionów wojsk powietrznodesantowych.
Ich zadaniem jest zajęcie najważniejszych punktów strategicznych takich jak kopalnie, magazyny czy główne drogi, zanim ciężki sprzęt dotrze w ten rejon z granicy. 
<br />
<br />
Okoliczne oddziały policji oraz wojsk nie były w stanie podjąć walki z siłami, które zostały zdesantowane przez Rosjan. 
Nasze dowództwo obawia się, że jeśli nie wyprzemy VDV z tych rejonów, późniejszy atak będzie bardzo trudny w realizacji. 
<br />
<br />
Musimy działać szybko ze względu na ciągle narastającą liczebność przeciwnika, mamy nadzieję, że nie zdąży dobrze umocnić swoich pozycji. 
<br />
<br />
<img width='360' image='data\resources.jpg' />
</font>
"
]
];

player createDiaryRecord [
"Diary", [
"Briefing",
"
<font size='16'>Wasza kompania jest częścią Sił Szybkiego Reagowania.
<br />
Minęły 24 godziny od rosyjskiej agresji. 
<br />
Jako że jesteście jedyną zmobilizowaną jednostką wojskową blisko obszaru działań,
powierzone zostało Wam zadanie zabezpieczenia jednej z głównych dróg w okolicy żelaznego miasta, Kiruny. 
<br />
Teren jest pod kontrolą rosyjskiego batalionu VDV. 
<br />
<br />
<img width='500' height='350' image='data\inwazja.jpg' />
</font>
"
]
];

player createDiaryRecord [
"Diary", [
"Wyposażenie",
"
<font size='16'>
wyposażenie piechoty:
</br>
- AK 5C
<br />
- AK 5C (M203)
<br />
- KSP 90 (Minimi)
<br />
- KSP 58F (FN MAG)
<br />
- GRG m/86 (CARL GUSTAF)
<br />
- FGM-148 Javellin
<br />
- FIM-92 Stinger
<br />
- Pansarskott m/86 (AT4)
<br />
- AK 4D z celownikiem optycznym
<br />
- Każdy wyposażony w EOTech 552
<br />
<br />
Pojazdy, sprzęt ciężki:
<br />
- 4x CV-90 (2 zapasowe)
<br />
- 4x ciężarówka zaopatrzeniowa MTVR
<br />
- 2x ciężarówka z paliwem MTVR
<br />
- 5x TGB-16 nieuzbrojone 
<br />
- 3x TGB-16 M2
<br />
Moździerz 8cm grk m/84
<br />
</font>
"
]
];

player createDiaryRecord [
"Diary", [
"Informacje o przeciwniku",
"
<font size='16'>
Jest to rosyjskie VDV, desant był obserwowany.
Według naszych szacunków wróg w tym rejonie to batalion składający się z ok. 550 żołnierzy. 
Dysponuje on typowym dla wojsk powietrznodesantowych sprzętem takim jak:
<br />
- Pojazdy opancerzone BMD-2, oraz BMD-4, BRDM-2 (9P148), 2S25 Sprut-SD. Łącznie około 25 pojazdów.
<br />
- Samochody terenowe Tigr
<br />
- Bronie statyczne wszelkiego typu
<br />
- Piechota to dobrze wyszkolenie i bardzo dobrze wyposażone jednostki specjalne VDV. Mogą posiadać sprzęt taki jak gogle noktowizyjne, zaawansowane celowniki i broń wytłumiona.
Jednostki tego typu specjalizują się w działaniach nieregularnych, np. walkach partyzanckich i organizowaniu zasadzek z użyciem min i ładunków wybuchowych.
<br />
- Pojedyncze śmigłowce bojowe Mi-24
<br />
- Liczne śmigłowce transportowe Mi-8 
</font>
"
]
];

player createDiaryRecord [
"Diary", [
"Zalecenia i informacje",
"
<font size='16'> - Czas nie jest przyspieszony
<br />
- Wszystkie zadania zaliczają się automatycznie
<br />
- Ludność cywilna może znajdować się w terenie zabudowanym.
<br />
- W skrzyniach znajdują się MicroDAGRy
<br />
- Zadaniem logistyków jest transport amunicji, medykamentów, przezbrajanie, naprawianie oraz tankowanie pojazdów. Tylko on ma pełne zdolności naprawy wszelkich pojazdów.
<br />
- Załoga pojazdu może naprawić pojazd tylko częściowo (kolor żółty)
<br />
- Rozpoczynacie w punkcie LIMA na południowym-wschodzie.
<br />
- Przezbrojenie jest pobierane poprzez interakcję na bunkrze w punkcie LIMA.
<br />
- Moździerz przezbrajany jest poprzez interakcję dozbrój na pojeździe naprawczym/z przezbrojeniem.
<br />
- Punkt ECHO jest miejscem, w którym znajdują się pojazdy
<br />
- Saperzy mają na wyposażeniu saperki, dozwole użycie jedynie w celu realizacji prac minerskich.
<br />
- Moździerz bez komputera artyleryjskiego
<br />
- Zredukowano miejsce na wyposażenie w pojazdach (Cargo Space)
<br />
- Wszyscy dowódcy posiadają bronie z podwieszanym granatnikiem
<br />
- Punkt ZERO to miejsce, do którego musicie zabezpieczyć drogę
<br />
- Pełną kontrolę nad AI sprawuje system LAMBS. Nic nie ogranicza poruszania się AI - nie ma bezpiecznych stref. Nawet przebywanie w bazie wymagania obserwowania perymetru.
<br />
- Pochmurnie, możliwe opady, niewielka mgła, ok. 15 stopni celsjusza
<br />
</font>
"
]
];