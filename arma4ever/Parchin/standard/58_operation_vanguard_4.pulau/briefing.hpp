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
"1. LYNX 1-1 oraz LYNX 1-2 rozpoczynają operację na pokładzie USS Consitution. Ze względu na fakt, że są to czołgi, to załogi będą musiały zaczekać, aż siły desantowe zajmą plażę. Po zajęciu plaży i zabezpieczeniu lądowiska, śmigłowce będą musiały przetransportować czołgi transportem liniowym na wyspę. Załogi czołgów mogą użyć łodzi pontonowej znajdującej się przy rufie niszczyciela, aby dostać się na wyspę. Zabezpieczenie lądowisk to zadanie sił lądowych.
<br /><br />
2. Uzbrojenie okrętowe na USS Constitution nie posiada przezbrojenia celowo ze względu na fakt, że siła ognia jest ogromna. Wsparcie artyleryjskie okrętu i rakiet Tomahawk powinno być wzywane z rozwagą.
<br /><br />
3. Śmigłowce posiadają przezbrojenie przy widzie na lotniskowcu.
<br /><br />
4. Przezbrojenie pojazdów to skrzynia na lądowisku USS Constitution. Skrzynia musi być transportowana przez skrzydło lotnicze.
<br /><br />
5. Na pokładzie niszczyciela znajdują się Humvee dla piechoty. Śmigłowce transportowe muszą przetransportować pojazdy na wyspę. Pojazdy muszą być przygotowane do akcji przez załogę okrętową.
<br /><br />
6. Do transportu linowego zaleca się korzystanie z CH-53E Super Stallion. Venomy nie uniosą czołgu i służą typowo do wsparcia CAS.
<br /><br />
7. Zwiad satelitarny i mapa operacji zostanie dodana ok. 24 godzin przed rozpoczęciem operacji.
<br /><br />
8. W przypadku niepełnych drużyn zalecane rozbicie Hitman 4, aby drużyny były kompletne.
<br /><br />
9. Ze względu na poziom trudności operacji, dodano 20 slotów rezerwy. Rezerwa powinna być przetransportowana na pole bitwy za pomocą śmigłowców.
<br /><br />
10. Winda na dolny pokład znajduje się w wyspie lotniskowca. Używać ze zdrowym myśleniem i pojedynczo."
]];


player createDiaryRecord ["Diary", ["================",
" "
]];


player createDiaryRecord ["Diary", ["H. POGODA",
"Opady: Silny deszcz
<br />Wiatr: 260 KT/240
<br />Temperatura: 18 C
<br />Widzialność: 500m-800m (MGŁA)
<br />Podstawa chmur: 1200m
<br />Wilgotność: 80%"
]];


player createDiaryRecord ["Diary", ["G. DANE WYWIADOWCZE CIA",
"STREFA LĄDOWANIA ALABAMA #1
<br /><img width='360' image='data\alabama.jpg' />
<br /><br />
STREFA LĄDOWANIA ALABAMA #2
<br /><img width='360' image='data\alabama2.jpg' />
<br /><br />
STREFA LĄDOWANIA ALABAMA #3
<br /><img width='360' image='data\alabama3.jpg' />
<br /><br />
WIOSKA NURUL
<br /><img width='360' image='data\nurul1.jpg' />
<br /><br />
STANOWISKO PRZECIWLOTNICZE ZSU
<br /><img width='360' image='data\zsu1.jpg' />
<br /><br />
LOTNISKO PULAU MONYET
<br /><img width='360' image='data\lotnisko1.jpg' />
<br /><br />
BAZA WOJSKOWA GEN. GUSTAV
<br /><img width='360' image='data\baza1.jpg' />
<br /><br />
GENERAŁ ESTEBAN GUSTAV
<br /><img width='360' image='data\gustav.jpg' />"
]];

player createDiaryRecord ["Diary", ["F. TEREN OPERACJI",
"Terenem inwazji jest wyspa Pulay Monyet. Zachodnie wybrzeże zostało umocnione w przeciągu ostatnich dwunastu godzin. Zauważono wzmożony ruch wroga w okolicy strefy lądowania Alabama. Sprzymierzone siły zbrojne wysp Tanoa donoszą, że plaże wschodniego wybrzeża zostały zaminowane minami przeciwpiechotnymi. Zwiad satelitarny jest obecnie ograniczony ze względu na niekorzystne warunki atmosferyczne i grubą warstwę chmur. Ostatnie zdjęcia wykonane siedem godzin przed rozpoczęciem operacji ukazują liczne umocnienia na plaży Alabama, stanowiska AA na wyspie w postaci ZSU, oraz pojedyncze punkty obrony wybudowane za pomocą worków z piaskiem."
]];

player createDiaryRecord ["Diary", ["E. CEL OPERACJI",
"Celem głównym inwazji jest przejęcie kontroli nad wyspą Pulau Monyet oraz zlikwidowanie zagrożenia dla USA jakim są wyrzutnie BM-21 Grad i sam generał Esteban Gustav."
]];


player createDiaryRecord ["Diary", ["D. CYWILE",
"Na terenie wyspy znajduje się liczna ludność cywilna. Większość z nich pozostaje neutralna politycznie, nie spodziewamy się oporu z jej strony. Z jasnych względów, dowództwo kategorycznie zakazuje przeprowadzania bombardowania lub ataków rakietowych na wioski i miejscowości na wyspie."
]];

player createDiaryRecord ["Diary", ["C. SIŁY PRZECIWNIKA",
"Siły przeciwnika to armia rebeliancka generała Gustava. Składa się ona z tanoańskich żołnierzy. Armia jest aktywnie wspierana przez ISIS które chce uzyskać znaczne wpływy w tym rejonie. Ze względu na dynamikę sytuacji nie są znane dokładne jednostki używane przez przeciwnika. Wiadomo jedynie, że jest to sprzęt produkcji sowieckiej. Siły wroga są wyszkolone i liczne, lecz sprzęt znacząco ogranicza wydajność bojową wojsk rebelianckich.
<br /><br />
Siły wroga są zahartowane wojną domową. Na wyspie są obecne umocnienia. Wojska rebeliancje są świadome sytuacji. Przeciwnik jest umocniony i gotowy do walki."
]];

player createDiaryRecord ["Diary", ["B. SIŁY WŁASNE",
"Kompania A 11. Grupy Ekspedycyjnej US Marines składa się z 4 drużyn piechoty składających sie z 10 żołnierzy. Wsparcie ogniowe zapewnią dwa pojazdy amfibijne LAV-25.
<br /><br />
Do przeprowadzenia ataku ambifibijnego przygotowano pojazdy AAVP-7A1. Celem wsparcia dalszych walk na wyspie, niszczyciel USS Consitution transportuje pojazdy HMMWV oraz prototypowe czołgi lekkie AWC Nyx. Pojady z niszczyciela będą musiały zostać przetransportowane linowo przez skrzydło lotnicze po zabezpieczeniu plaży.
<br /><br />
Celem dodatkowej wyporności AAVP-7A1, wypompowano z nich dużą część paliwa. Pojazdy amfibijne są przeznaczone do przejęcia plaży i pierwszej fazy ataku. Celem zapewnienia mobilności dla sił lądowych w późniejszej walce o wyspę, skrzydło transportowe będzie musiało dostarczyć pojazdy HMMWV.
<br /><br />
Ze względu na złe warunki pogodowe na morzu, pojazdy transportowane przez USS Constitution zostały dodatkowo zabezpieczone, a paliwo zostało zredukowane ze względu na ryzyko pożarowe. Przed wyprowadzeniem pojazdu na lądowisko dla śmigłowców, drużyna logistyczna musi przygotować pojazd.
<br /><br />
Na pokładzie USS Constitution znajdują się siatki ładunkowe które mogą być transportowane przez śmigłowce. Na statku znajdują się magazyny broni, amunicji i medykamentów. W razie konieczności, HQ powinno składać zamówienia zaopatrzenia do drużyny logistycznej. <br />Drużyna powinna załadować zamówione zaopatrzenie do jednej ze skrzyń transportowych, a ta następnie będzie przetransportowana na wyspę przez śmigłowce.
<br /><br />
Do wsparcia artyleryjskiego i rakietowego wyznaczono niszczyciel rakietowy USS Constitution.
<br /><br />
Do wsparcia lotniczego wyznaczono dwa śmiglowce Bell UH-1Y Venom w konfiguracji CAS oraz dwa śmigłowce transportowe Sikorsky CH-53E Super Stallion. Ze względu na małą wielkość wyspy, niską widzialność i złe warunki atmosferyczne dowództwo wstrzymało się z wykorzystaniem F/A-181."
]];


player createDiaryRecord ["Diary", ["A. SYTUACJA",
"Czas: 16 MAJ 2023 05:00
<br /><br />Lokalizacja: Archipelag Palau, wyspa Pulay Monyet

<br /><br />Raport: Kilka miesięcy temu na terenie archipelagu Palau doszło do wojny domowej między lojalistami z wyspy Palau Gurun, oraz reżimowi generała Estebana Gustav z wyspy Pulay Monyet. 

<br /><br />Archipelag Palau formalnie należy do rządu z wyspy Tanoa, który jest sojusznikiem NATO. Ze względu na ISIS dozbrajający reżim generała Gustava, zyskuje on znaczącą przewagę w wojnie domowej, co stawia USA w niebezpieczeństwie ze względu na niewielką odległość archipelagu Palau od zachodniego wybrzeża USA.

<br /><br />Dnia 11 maja najnowsze zdjęcia wykonane przez samolot zwiadowczy CIA pokazały, że reżim generała Gustava otrzymał od ISIS mobilne platformy rakietowe BM-21 Grad.

<br /><br />Dnia 12 maja zwołano nadzwyczajne posiedzenie kongresu US, który upoważnił prezydenta Bidena do wydania rozkazu inwazji na wyspę celem zapewnienia bezpieczeństwa kraju.

<br /><br />Dnia 13 maja prezydent Biden wydał rozkaz inwazji na wyspę Pulay Monyet celem zlikwidowania zagrożenia dla bezpieczeństwa kraju. Sformowano grupę uderzeniową składającą się z lotniskowca USS Freedom, niszczycieli USS Liberty, USS Constitution, oraz eskorty krążowników USS Chosin, USS Vicksburg, USS Lake Erie.

<br /><br />Do przeprowadzenia inwazji wyznaczono 11. Jednostkę Ekspedycyjną US Marines'Duma pacyfiku'. Atak naziemny przeprowadzi 1. Batalion US Marines, wsparcie zapewnia skrzydło lotnicze VMM-165 (Rein) oraz 11. Batalion logistyczny.

<br /><br />Po 40 godzinach flota dopłynęła do północnego wybrzeża Pulay Monyet. Dnia 15 maja o godzinie 15:00 USA wysłalo depeszę do generała Gustava o żądaniu bezwarunkowej kapitulacji w ciągu 12 godzin.

<br /><br />W ciągu następnych pełnych napięcia 12 godzin, oczy całego świata zostały zwrócone w kierunku małego archipelagu Palau. O godzinie 05:00 dnia 16 maja rozpoczęto operację Vanguard mającą na celu zlikwidowanie generała Gustava i przywrócenie wyspy Pulay Monyet w ręce demokratycznego rządu Tanoa."
]];


player createDiaryRecord ["Diary", ["WARNO",
"WARNING MESSAGE - OPERATION OVERLORD<br/>
<img width='360' image='data\landing1.jpg' />"
]];