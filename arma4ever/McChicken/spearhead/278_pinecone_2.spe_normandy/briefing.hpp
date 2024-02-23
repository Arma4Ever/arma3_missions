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




player createDiarySubject ["Technicals", "Zalecenia MM"];

player createDiaryRecord [
"Technicals", [
"Zalecenia MM",
"
<br />
<br />
1. Ogólne:
<br /><br />
- Misja jest zbalansowana pod współdziałanie piechoty i pojazdów w mieście;<br />
- Markery ustawione przez MM zostaną usunięte podczas trwania INTRO;<br />
-
<br /><br />
2. Łączność
<br /><br />
- Radia (plecakowe) mają tylko i wyłącznie RTO;<br />
- Na misji są dostępne tylko radia plecakowe. Jeżeli ktokolwiek poza RTO lub dowódcą pojazdu ma radio jest to błąd misji i ma się go pozbyć;<br />
<br /><br />
3. Bronie drużynowe
<br /><br />
- Zakaz wypinania obsady moździerza spod drużyny BAKER;<br />
- Zakaz obsadzania broni drużynowych w przypadku rozwiązania drużyn wsparcia przez HQ;<br />
- Zarówno moździerz jak i CKM są rozkładane. Obsługa musi przećwiczyć rozkładanie i składanie broni zespołowej.<br />
<br /><br />
4. Umocnienia <br/><br />
- Saperzy w drużynie DOG, w pobliżu swojego halftrucka, mogą wznosić umocnienia z worków z piaskiem i 'jeże'.
<br /><br />
"
]
];

player createDiaryRecord [
"Diary", [
"G) Struktura dowodzenia",
"
<br />
<br />
Dowódca operacji pełni jednocześnie rolę dowódcy pierwszego plutonu (Able + Baker).<br />
Dowódca plutonu w Seven podlega bezpośrednio dowódcy operacji oraz dowodzi Charlie, Dog i Dragon.
<br /><br />
"
]
];

player createDiaryRecord [
"Diary", [
"F) Wyposażenie",
"
<br />
<br />
Piechota: M1 Garand<br />
Strzelcy KM: Browning M1919 + statyw<br />
Strzelcy RKM: lub M1918 BAR,<br />
Strzelcy PPANC: M1 Bazooka,<br />
Dowódcy: Thompson M1A1,<br />
Snajper: Springfield M1903,<br />
Moździerz: składany M1 (lufa i statyw)<br />
<br /><br />
Pojazdy:<br />
1x Sherman M4<br />
<br /><br />
"
]
];

player createDiaryRecord [
"Diary", [
"E) Dostępne środki i zaopatrzenie",
"
<br />
<br />
Znajdujecie się na linii frontu. Ze względu na problemy z logistyką wyposażenie jest skromne i raczej ograniczone. Kilka transportów naszej amunicji przejęli Niemcy w wyniku akcji dywersyjnych Wafen-SS z wykorzystaniem ludności cywilnej. Być może uda wam się odnaleźć przejęty sprzęt.
<br/><br/>
Niemieckie pociski moździerzowe powinny pasować do naszego moździerza.<br/>
Sherman może uzupełnić zapasy w przejętych magazynach wroga, część wyposażenia powinna być kompatybilna.
<br /><br />
"
]
];

player createDiaryRecord [
"Diary", [
"D) Cywile",
"
<br />
<br />
Lokalna ludność znajduje się pod okupacją nazistów od 28 maja 1940. Prawdopodobnie po pierwszych wystrzałach ludność cywilna poszuka schronienia, jednak miejcie na uwadze przez cały czas trwania operacji obecność cywili w rejonie działań!
<br /><br />
"
]
];

player createDiaryRecord [
"Diary", [
"C) Przeciwnik",
"
<br />
<br />
Po drugiej stronie linii frontu stacjonują siły główne Wermachtu. Wiemy, że dysponują ograniczoną liczbą jednostek szybkiego reagowania wyposażonych w transportery Sd.Kfz. 251 oraz czołgami PzKpfw IV. W ostatnich walkach Niemcy ponieśli dotkliwe straty. Chociaż należy spodziewać się sporej liczby poborowych z uzupełnień, głównych punktów strategicznych będą strzegły doświadczone oddziały!
<br /><br />
"
]
];

player createDiaryRecord [
"Diary", [
"B) Sytuacja w rejonie",
"
<br />
<br />
Zaskakujący sukces oraz tempo operacji ''Neptun'' napsuło krwi niemieckim dowódcom. Sprawnie przeprowadzony atak na wybrzeże pozwolił zabezpieczyć korytarz logistyczny dla zaopatrzenia. Stanowicie uzupełnienie, wchodząc w skład kompanii How wymieniacie na szpicy Kompanię Fox, która poniosła straty rzędu 70%.<br /><br />
"
]
];

player createDiaryRecord [
"Diary", [
"A) Odprawa",
"
<br />
<br />
<font size='16'>1. Do szturmu na miasto Eglise Sainte Vierge czy jak to tam się wymawia, został przypisany wasz pluton złożony z drużyn Able, Baker, Charlie i drużyny wsparcia inżynieryjnego Dog.
<br /><br />
Waszym głównym zadaniem jest zdobycie i utrzymanie centralnego skrzyżowania w mieście. W przypadku napotkania umocnionych stanowisk ogniowych przeciwnika, takich jak gniazda artylerii czy stanowiska obrony przeciw-lotniczej, zadaniem drużyny DOG jest zniszczenie sprzętu stacjonarnego nazistów.
<br /><br />
Przeszukajcie miasto w poszukiwaniu stanowisk dowodzenia niemieckiej obrony. W przypadku znalezienia wiarygodnych danych wywiadowczych informujących o strategicznych obiektach w rejonie waszych działań zajmijcie je.
<br /><br />
 Drużyny Able, Baker oraz oficer dowodzący operacją zostały ugoszczone w hotelu Au Crosnier.
<br /><br />
Able oraz Baker przeprowadzą rozpoznanie w kierunku Les Croutes przygotowując się następnie do frontalnego ataku na Eglise z kierunku zachodniego.
<br /><br />
Drużyny Charlie oraz Dog stacjonują na farmie La Rihouerie De Bas.
<br /><br />
Zadaniem saperów z drużyny DOG, przy wsparciu Charlie, jest przeprawienie czołgu przez pola minowe do drogi na zachód, wchodzącej do miasta Eglise od południa. Podejrzewamy, że droga również może być zaminowana.
<br /><br />
Sam szturm na miasto powinien być skoordynowanym uderzeniem z zachodu oraz od południa. Able oraz Baker z zachodniego kierunku powinni szybko opanować ścisłe centrum miasta, zdobywając kościół przy centralnym skrzyżowaniu.
<br /><br />
W tym czasie nadciągający od południa sherman uniemożliwi dotarcie wsparcia drogą z północnego wschodu. Niemcy znajdą się w krzyżowym ogniu. Na koniec upewnijcie się, że wróg został wyparty ze wszelkich zabudowań w mieście.
<br /><br />
"
]
];
