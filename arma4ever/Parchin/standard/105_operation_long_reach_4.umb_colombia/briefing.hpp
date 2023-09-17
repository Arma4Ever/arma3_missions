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
player createDiaryRecord ["Diary", ["TECHNICZNE",
"1. Przezbrojenie dla śmigłowców znajduje sie na lotniskowcu (zielony kontener).
<br /><br />
2. Przezbrojenie dla Sierra znajduje się w punkcie lądowania SIERA INFIL.
<br /><br />
3. Zespół Sierra startuje oddzielnie, skok spadochronowy.
<br /><br />
4. Sygnał wieży telekomunikacyjnej przestawia się za pomocą interakcji A4ES.
<br /><br />
5. Zadania powinny zaliczać się automatycznie.
<br /><br />
6. System FRIES (Fast Rope Insertion Extraction System) został włączony dla śmigłowców.
<br /><br />
7. Sloty rezerwy tylko dla pilotów ze względu na ich krytyczną funkcję w misji (jedyny środek transportu).
<br /><br />
8. Radar drużynowy jest wyłączony dla zwiększenia trudności misji oraz większego nacisku na komunikację między graczami.
<br /><br />
9. Operacja jest trudna. Oczekuje się rozsądku i taktycznego podejścia do zadań, jak na siły specjalne przystało.
<br /><br />
10. Patrole przeciwnika mogą pojawić się w każdej części obszaru operacji. Znajdujecie się w terenie wroga.
<br /><br />
11. Rzeki są względnie bezpieczne według zwiadu. Siły wroga preferują ukrywanie się w dżungli.
<br /><br />
12. Operacja jest trudna. Oczekuje się rozsądku i taktycznego podejścia do zadań, jak na siły specjalne przystało."
]];


player createDiaryRecord ["Diary", ["================",
" "
]];

player createDiaryRecord ["Diary", ["G. POGODA",
"Opady: Umiarkowany deszcz.
<br />Wiatr: Umiarkowany wiatr, kierunek 040.
<br />Temperatura: 17 C
<br />Widzialność: 1000-1500m
<br />Podstawa chmur: 6000m
<br />Wilgotność: 72%"
]];

player createDiaryRecord ["Diary", ["F. DANE WYWIADOWCZE CIA",
"OBJECTIVE BOY
<br /><img width='360' image='data\boy1.jpg' />
<br /><br />
OBJECTIVE CHARLES
<br /><img width='360' image='data\charles1.jpg' />
<br /><br />
RAFAEL GUTIERREZ | PETER CHOU
<br /><img width='360' image='data\cele1.jpg' />
<br /><br />
PABLO ORTEGA
<br /><img width='360' image='data\ortega1.jpg' />
<br /><br />
AGENT JOHN DONALLY
<br /><img width='360' image='data\donally1.jpg' />
<br /><br />
AGENT JAMES FALCON
<br /><img width='360' image='data\falcon1.jpg' />"
]];

player createDiaryRecord ["Diary", ["E. CEL OPERACJI",
"Celem glównym operacji jest zlokalizowanie i ratunek dwójki zakładników. Celem zlokalizowania zaginionych agentów CIA opracowało plan triangulacji. Wyznaczono trzy wieże telekomunikacyjne które muszą zostać przejęte (Objective BOY/ADAM/CHARLES). Następnie będzie można ustalić ostatnie położenie telefonu zaginionego agenta, co wskaże miejsce jego przetrzymywania. Aby zdobyć numer telefonu zaginionego agenta trzeba zdobyć telefon jego współpracownika. Prawdopodobnie nadal znajduje się on w kryjówce CIA w miejscowości Arjun. Po spełnieniu wszystkich czterech warunków, CIA będzie w stanie ustalić miejsce przetrzymywania zaginionych agentów. Po zlokalizowaniu miejsca przetrzymywania, zespoły nazimne będą musiały odbić zakładników, a następnie ewakuować ich na lotniskowiec USS Freedom.

<br/><br/>Rafael Gutierrez, Peter Chou oraz Pablo Ortega zostali oznaczeni jako cele do wyeliminowania. Zdaniem CIA posiadają oni zbyt dużo informacji na temat działań agencji i stanowią duże zagrożenie. Do neutralizacji wyznaczono zespół Sierra. Strzały powinny paść z dużej odległości. Agencji zależy na dyskrecji w wykonaniu wszystkich trzech egzekucji. Zespół Sierra musi uniknąć wykrycia podczas wyeliminowania obydwu celów. Snajperzy mogą w międzyczasie asystować elementom SEALS w ich zadaniach, nie muszą likwidować wszystkich trzech celów w pośpiechu. Cele powinny być jednak zneutralizowane celem pełnego ukończenia operacji. Sierra do transportu może i powinna wzywać śmigłowce Rider. Zespół posiada także RHIB w swoim LZ. Zespoły bojowe SEALS nie posiadają transportu naziemnego, za transport wszystkich drużyn  oraz wsparcie CAS w czasie operacji odpowiadają śmigłowce 160th Special Operations Aviation Regiment."
]];


player createDiaryRecord ["Diary", ["D. CYWILE",
"W rejonie operacji znajduje się liczna ludność cywilna. Straty w infrastrukturze należy ograniczyć do minimum."
]];

player createDiaryRecord ["Diary", ["C. SIŁY PRZECIWNIKA",
"Lokalne oddziały wojsk Kolumbijskich i bojówka kartelu Mataderos.
<br /><br />
Oba ugrupowania posiadają słaby sprzet i wyszkolenie. Ich przewagą jest liczebność. Armia Kolumbijska jest w dużej części skorumpowana, dlatego działają razem z kartelem."
]];

player createDiaryRecord ["Diary", ["B. SIŁY WŁASNE",
"160th SOAR (160th Special Operations Aviation Regiment) Night Stalkers - 3x UH-60M Blackhawk
<br /><br />
SEAL Team Six - Alpha, Bravo, Charlie. Każda drużyna liczy 10 operatorów.
<br /><br />
SEAL Team Six - Sierra. Drużyna snajperska do działań głęboko w terenie wroga. Dwuosobowy zespół."
]];


player createDiaryRecord ["Diary", ["A. SYTUACJA",
"Czas: 22 LIPIEC 2023 04:00
<br /><br />Lokalizacja: USS Freedom, wody międzynarodowe, kilka mil od wybrzeża Kolumbii.

<br /><br />Raport: Około tydzień temu dnia 15 lipca utracono kontakt z komórką szpiegowską CIA na terenie Kolumbii. Agencja jest niechętna do udzielenia infomacji czym konkretnie zajmowali się agenci w tym rejonie kraju. Wiadomo jedynie, że chodzi o przemyt kokainy i ludzi na teren Stanów Zjednoczonych przez Meksyk.

<br /><br />Dnia 15 lipca CIA nie otrzymało raportu dobowego od agentów znajdujących się w rejonie Contelibano. Agentów zidentyfikowano jako agent John Donally oraz James Falcon. Zgodnie z dostarczonymi informacjami, tajna komórka CIA znajdowała sie pod adresem Arjona 214 w małej wiosce Arjona.

<br /><br />Agenci mieli udać się na spotkanie z kretem kartelu Mataderos celem zdobycia informacji wywiadowczych. Arion Perez to główny prawnik kartelu, dlatego mógł posiadać bardzo cenne informacje. Według CIA, wydał on obydwu agentów liderowi kartelu.

<br /><br />CIA za pośrednictwem Joint Special Operations Command (JSOC) poprosiło o interwencję wojsk specjalnych i operację ratunkową dwójki zaginionych agentów oznaczonych jako MIA (Missing-In-Action).

<br /><br />16 lipca lotniskowiec USS Freedom został wyznaczony jako mobilna baza operacyjna. Lotniskowiec wyruszył w kierunku Kolumbii. Na pokładzie rozlokowano śmigłowce 160th SOAR oraz zespół SEALs.

<br /><br />18 lipca dowódctwo operacji specjalnych marynarki wojennej US (United States Naval Special Warfare Command/USNSWC) rozpoczęło operację Long Reach mającą na celu ratunek obu agentów oraz zlikwidowanie dwóch kretów.

<br /><br />Okręgi oznaczone na mapie to strefy których należy unikać przez śmigłowce. Zapełnione czerwone koła to strefy gęsto zaludnione, co może przyciągać zbyt dużo uwagi. Strefa zakreskowana to obszar w którym prawdopodobnie przetrzymywani są zakładnicy. Zaleca się unikani tej strefy do czasu odbicia zakładników."
]];


player createDiaryRecord ["Diary", ["WARNO",
"WARNING MESSAGE - OPERATION LONG REACH"
]];