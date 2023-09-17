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
"Sily wroga",
"
<font size='20'>Wrog oraz <font color='#0066FF'>zagrozenia</font></font>
<br />
<br />
<font size='16'>
W rejonie operacji znajduja sie jednostki czeczenskie, separatysci Osetii, instruktorzy Rosyjscy. Na terenie mozliwa aktywnosc PLOT tj. zu23, Igla, Dshkm. Lotnictwo Rosyjskie aktywne w rejonie ogranicza sie tylko do patroli strefy powietrznej. Jednostki Rosyjskie nie powinny inicjowac ataku z pogodek takich samych jak Gruzja. Z notatek przetargowych i meldunkow partyzantow mozemy stwierdzic, ze operuja tutaj:
<br/><br/>
Separatysci Osetii<br/>
- 2 plutony zmechanizowane <br/>
- nieznane ilosci oddzialow rozpoznania<br/>
- 2 kompanie piechoty<br/>

<br/>
Wojska Ahmat - Czeczeni<br/>
- 2 plutony zmechanizowane <br/>
- 1 kompania zmotoryzowana <br/>
- 2 kompanie logistyczne z hq<br/>
- 1 batalion piechoty<br/><br/>

Sily zbrojne FR<br/>
- doradztwo wojskowe<br/>
- patrole lotnicze<br/>
<br/>

Wrog dysponuje arsenalem radzieckim.<br/>
W strefie zdemilitaryzowanej mozliwy kontakt z wrogiem<br/>
Za granica stacjonuje wszystko co wyzej plus ewentualne posilki

</font>
<br />
<br />
<img width='360' image='obraz1.jpg' />
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
Warunki meteo 06:00 05.03.2013:<br/>
- pełnia księżyca<br/>
- zachmurzenie duże<br/>
- lekkie zamglenie, szczególnie w niższych partiach terenu<br/>
- wiatr umiarkowany w porywach do 70kmh<br/>
<br/>
Dane operacyjne:<br/>
Strefa zdemilitaryzowana i tereny przy niej zostaly opustoszale. 
Cywile są nastawieni neutralnie, aczkolwiek trzeba brać poprawkę na obecność kolaborantów.<br/>
<br/>
Wyposażenie BASE McMaker:<br/><br/>
Pojazdy:<br/>
- 3x CH-146 Griffin<br/>
- 1x CH-146 Griffin Armed<br/>
- ciezarowki logistyczne<br/>
<br/>
Przezbrojenie:<br/>
- każda jednostka posiada predefiniowany ekwipunek<br/>
<br/>
Podstawowe wyposazenie:<br/>
- Scar-H + tlumik + EoTech<br/>
- USP + tlumik<br/>
- M14DMR + MR-10NVG + tlumik (wyborowy)<br/>
- Noktowizja szeroka<br/>
- M320 pistol (Grenadier)<br/>
- FN minimi (Strzelec RKM) <br/><br/>



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
Osetia, marzec 2013<br/>
BASE McMaker<br/>
Historia alternatywna<br/><br/>

Mija piaty rok od inwazji wojsk Federacji Rosyjskiej na Gruzje. Sily raszystow dokonaly spustoczenia i terroru ludnosci cywilnej. Niechec w stosunku do r0sjan jednak zostala zniwelowana w czesci Osetii. Tereny na polnocy Gruzji zostaly pod kontrola separatystow wspieranych przez impreialne zapedy ruskich. 

<br/><br/><img image='gruz.jpg' width='500' height='300'/><br/><br/>

Tymczasem po kilku latach od wojny rzad Gruzji pozyskal od partyzantow dosc niepokojace informacje. Na terenach okupowanych wrog demontuje osrodki badawcze, zaklady produkcyjne i sklady zasobow naturalnych. W te akcje zaangazowany zostal batalion logistyczny czeczenskiego Ahmatu, ktory na stale pozostaje dominujaca sila w Osetii. Z prowincji probuja ewakuowac sie cywile w kierunku Gruzji jak i do Rosji. Na ten moment ewakuacja sie konczy.
<br/>
<br/><br/><img image='bwp.jpg' width='500' height='300'/><br/><br/>
<br/>

Przeslanki wywiadow zagranicznych mowia o planach Putina przemieszczenia wojsk w rejon Morza Azowskiego. Na ta chwile wojska FR ubezpieczaja dzialania czeczenow w rejonie Osetii i wspieraja doradztwem wojskowym. Czy cos sie zmieni? Nie wiadomo. Wiemy tylko od naszego zleceniodawcy, ze ruscy kombinuja cos z bronia biologiczna. Konwoje Ahmatu wywoza ladunki z terenow okupowanych, a tymczasem kanaly informacyjne zaprzestaja informowania o sytuacji w Osetii. 
<br/><br/><img image='putler.jpg' width='500' height='300'/>
<br><br/>
Rzad Gruzji chcac uniknac eskalacji konfliktu ze swojej strony oglasza tajny przetarg. Przedmiotem przetargu ma byc przeprowadzenie operacji wojskowej, ktora ma w ciagu kilku godzin zabezpieczyc najwazniejsze ladunki z rezerw. Firma ION jako jedyna startujaca w przetargu przyjmuje od zleceniodawcy intel i opracowuje Operacje Reforge.
<br/>
Z danych przekazanych nam przez wywiad Tbilissi dostajemy szczatkowe informacje. Wyposazenie wrogich czeczenow pozostaje pod znakiem zapytania, aczkolwiek to co wiemy mamy rozpisane w kolejnej zakladce. <br/> Sztab ION bazujac na informacjach Gruzinskich opracowuje plan przejecia lokalnego dowodcy logistyki sil Ahmat w celu odnalezienia ladunkow.


</font>
<br />
<br />

"
]
];
