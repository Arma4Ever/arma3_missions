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
"Wywiad i zadania",
"
<font size='20'><font color='#0066FF'>Zadania</font></font>
<br />
<br />
<font size='16'>

Zadaniem na dzisiejszy wczesny, alarmowy poranek jest odszukanie naszego drona.<br/>
Dron byl wyposazony w rakiety PLOT i przeprowadzal zwiad granicy. Po wykonaniu zadan udawal sie do bazy Danuta i stracono z nim lacznosc na wysokosci Sumari 160-075. Jego wektor to zachod, wiec musi byc gdzies w zaznaczonym terenie.<br/>
Musimy go odnalezc i zgrac dane. Jezeli sie uda to dobrze byloby go zabrac do bazy, jesli nie to wysadzic.<br/>
<br/>
W tym samym czasie lub po odnalezieniu musimy zorganizowac FOB.<br/>
Sztab wyznaczyl dogodna pozycje i po konsultacjach z sojusznikami zaakceptowano plan. Zaklada on rozbudowe sieci FOB, skad mozemy szybko organizowac QRF. Do tego zadania przydzielono nam inzynierow, ktorzy zajma sie zaplanowaniem i budowa FOBu.


<br/><br/>
<font size='20'><font color='#0066FF'>Dane wywiadowcze</font></font><br/><font size='16'><br/>
W rejonie operacji znajduja sie jednostki cywilne. Czesc nasilenia ludnosci opuscila tereny przygraniczne.<br/>
Obszar wspoldzielimy z Polska brygada zmot i zmech. Prowadza oni patrole glownych drog<br/>
Okoliczna zielona granica z Rosja jest monitorowana. Aktualnie trwaja dzialania zaczepne imigrantow.<br/>
Na terenie dzialan mozliwi spekulanci, spiochy i kolaboranci. Konflikt trwa juz ponad rok, mieli duzo czasu<br/>
Mozliwe prowokacje lotnictwa rosyjskiego. Mamy odpowiadac ogniem i eliminowac jesli prowadzi dzialania zbrojne.<br/>
Granica z rosja jest ok 5km na polnocny wschod kranca mapy. Operuje tam miejscowa straz graniczna i policja. Mamy zakaz zblizania sie na 10km od granicy bez koniecznosci<br/>
W trakcie wykonywania zadan Sztab (komunikaty w trakcie misji) moze przypisac wam nastepne zadania.
</font>
<br /><br />
<img width='360' image='obraz.jpg' />
"
]
];


player createDiaryRecord [
"Diary", [
"Meteo oraz sily wlasne",
"
<font size='20'>Warunki meteo oraz <font color='#0066FF'>wyposazenie</font></font>
<br />
<br />
<font size='16'>
<font size='20'><font color='#0066FF'>Warunki meteo 03:30 22.04.2024:</font></font><br/><font size='16'><br/><br/>
- pełnia księżyca<br/>
- zachmurzenie umiarkowane<br/>
- lekkie zamglenie, mozliwy lekki deszcz<br/>
- wiatr umiarkowany w porywach do 60kmh<br/>
<br/>
<font size='20'><font color='#0066FF'>Szpej</font></font><br/><font size='16'><br/><br/>
Wyposażenie BAZA Danuta:<br/>
Pojazdy:<br/>
- 2x MI-17-1W<br/>
- 1x MI-17-1W UB32<br/>
- 2x MI-24P pylony<br/>
- ciezarowki logistyczne<br/>
- 2x skrzynka inzynieryjna i narzedzia do budowania<br/>
- 2x M2 statyczne<br/>
- 1x Igla statyczna<br/>
- 2x M2 statyczne<br/>
- 2x HMMWV KM<br/>
- 4x HMMWV <br/>
- 1x Star transport<br/>
<br/>
Wyposażenie FOB Malbork:<br/>
- przezbrojenie dla helikopterow - wymagane 2 skrzynki inzynieryjne<br/>
- to, co tam dostarczycie<br/>

<br/>
Przezbrojenie:<br/>
- każda jednostka posiada predefiniowany ekwipunek<br/>
- przezbrojenie w skrzynkach, ale wiekszosc macie na sobie<br/>
- dodatki M552, M68 CCO, Latarki - w ograniczonych ilosciach <br/>
<br/>
Podstawowe wyposazenie:<br/>
- Beryl 96<br/>
- WIS 100<br/>
- Noktowizja PVS15<br/>
- PKM (Strzelec MG) <br/>
<br/>


Techniczne:<br/>
- inzynierzy budujacy FOBa niech zmienia sobie interfejs ACE na liste.<br/>
- skrzynki inzynieryjne sa tez skrzynkami przezbrajajacymi<br/>
- helki potrafia na linach spuszczac desant<br/>
- sloty rezerwy do wykorzystania, z glowa<br/>

</font>
<br />
<br />
<img width='360' image='data\loadscreen.jpg' />
"
]
];


player createDiaryRecord [
"Diary", [
"Briefing",
"
<font size='20'>Briefing <font color='#0066FF'>misji</font></font>
<br />
<br />
<font size='16'>
Kraj Baltycki, kwiecien 2024<br/>
BAZA Danuta<br/>
Historia alternatywna<br/><br/>
Front wojny informacyjnej, hybrydowej i konwencjonalnej Europy z rosja rozciaga sie poza terytorium Ukrainy i Bialorusi<br/>
Ukraina po kolejnej kontrowersyjnej, lecz nieuniknionej mobilizacji przechodzi do kontrofensywy i atakow poza swoje terytorium. Front zaporoski runal i kieruje sie na Mariupol, a ZSU forsuje rzeki na Dnieprze. Rosja po wyborach i mobilizacji od razu po, jest dalej w stanie utrzymywac front Bialoruski i Luganski. 
<br/>
W miedzyczasie Putin zwieksza wysilki na granicach z NATO. Trwa kolejna tura wojny hybrydowej, lecz na dlugosci od Finlandii do Bialorusi. Kraje baltyckie zmagaja sie z fala migrantow i w tym natloku obcy wywiad. Co raz czesciej dochodzi do incydentow energetycznych, a koleje i infrastruktura jest hakowana.<br/>Stworzyla sie liga panstw z bloku NATO, ktora zdecydowala sie na pomoc. Jako wsparcie wyslano zolnierzy m.in. z Niemiec, Czech, Szwecji, Polski, USA i Wielkiej Brytanii.
<br/><br/>
Trwa druga zmiana PKW Baltica. <br/>Moskalska wojna hybrydowa przyspieszyla. Rosjanie sciagaja teraz przybyszy z Palestyny i krajow afryki. Schemat dzialan jest identyczny jak na granicy Polsko-Bialoruskiej.<br/>Grupy migrantow sa dowozone transportem kolowym i instruowane przez sily pograniczne. Kryzys jest na tyle powazny, ze udaremniono w ostatnim czasie przemyt broni i liczne przekroczenia granicy zielonej.<br/>W reakcji na potrzebe zwiekszenia kontroli nad granicami krajow zwiazkowych, stworzono koalicje panstw Baltyckich. Do sojuszu dolaczyly europejskie kraje NATO.<br/>Polski kontyngent zostal dolaczony do misji stabilizacyjnej sojuszu polnocnoatlantyckiego i odeslany rejon Zatoki Finskiej. Kraje NATO przeprowadzaja regularne patrole morskie na polnocnym Morzu Baltyckim oraz stacjonuja w krajach flanki wschodniej. <br/>
Naszym zadaniem w regionie jest rozszerzenie o budowe kolejnych FOBow i patrole okolic przygranicznych.

<br/><br/><img image='ddddddddddddd.jpg' width='500' height='300'/><br/><br/>

<br />

"
]
];
