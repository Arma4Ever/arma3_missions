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
W rejonie operacji znajduja sie jednostki kolaborantow, lokalnego Vietcongu, zorganizowego Vietcongu. 
Na terenie mozliwa aktywnosc PLOT niekierowanych.Lotnictwo NVA jest nieaktywne. Z notatek wywiadu i meldunkow mozemy stwierdzic, ze operuja tutaj:
<br/><br/>
Vietcong<br/>
- bateria mozdzierzy <br/>
- nieznane ilosci oddzialow rozpoznania<br/>
- nieznane ilosci kolaborantow<br/>
- ok 2 kompanie piechoty<br/>
- lodki ex. cywilne z KM<br/>
- pluton dowodzenia i lacznosci<br/>


<br/>

Wrog dysponuje arsenalem radzieckim, niemieckim, postIndochinskim etc.<br/>
Za granica stacjonuje wszystko co wyzej plus ewentualne posilki

</font>
<br />
<br />
<img width='360' image='ggg.jpg' />
"
]
];


player createDiaryRecord [
"Diary", [
"Meteo oraz sily wlasne",
"
<font size='20'>Warunki meteo oraz <font color='#0066FF'>wyposazenie</font></font>
<br />
<br/>
Czas przyspieszony: dzien x5, noc x10
<br />
<font size='16'>
Warunki meteo 06:00:<br/>
- wschod slonca<br/>
- zachmurzenie male<br/>
- lekkie zamglenie, szczególnie w niższych partiach terenu<br/>
- wiatr lekki<br/>
- zachod slonca ok 18:10
<br/>
Dane operacyjne:<br/>
Strefa operacji zostala wezwana do ewakuacji 2 tygodnie temu. Kto mial uciec ten uciekl. 
Cywile są nastawieni neutralnie, aczkolwiek trzeba brać poprawkę na obecność kolaborantów.<br/>

<br/>
Wyposażenie FOB CHIZEL:<br/><br/>
Pojazdy:<br/>
- Orange HQ - 1x Jeep<br/>
- Alpha - 1x M113 Flamethrower, 1x ciezarowka M54<br/>
- Bravo - 1x Jeep M60, 1x ciezarowka M54<br/>
- Charlie - 1x M113 M2/M40, 1x Jeep<br/>
<br/>
Plus rezerwowe:<br/>
- 3x M113<br/>
- 1x ciezarowka M54<br/>
- 1x UH-13B<br/>,
- 8x slot rezerwy losowy<br/>
<br/>
Przezbrojenie:<br/>
- każda jednostka posiada predefiniowany ekwipunek<br/>
- dostepne skrzynki z przezbrojeniem<br/>
- przy M113 stoja skrzynki dla pojazdow<br/>
- radia poza RTO, samolotem, pojazdami, JTAC - nie istnieja i ma tak zostac<br/><br/>


<br/>
Wyposażenie Duc Thanh Airbase:<br/><br/>
Pojazdy:<br/>
- 4x A-1H Skyraider<br/>
- 1x UH-13B<br/>
- 1x UH-34 Seahorse M60<br/>
- 4x ciezarowki logistyczne<br/>
- 2x M274 Mule<br/>


Samoloty maja konfigurowalne pylony, HF

</font>
<br />
<br />
<img width='360' image='skyraider.jpg' />
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
Wietnam, 1965<br/>
FOB Chizel<br/><br/>

Wczesny okres wojny w Wietnamie przynosi nie tylko sukcesy Armii USA, ale tez i porazki. Od momentu desantow US Marines do teraz wrogi Vietcong zintensyfikowal swoje akcje zaczepne, dywersje i operacje ofensywne. Nasze sily na kilka miesiecy przeszly do defensywy, przegrupowania i oczekiwaly na swieza krew.  

<br/><br/><img image='hq720.jpg' width='450' height='300'/><br/>USMC deployment<br/><br/>

Jak dotad sily polnocnego Wietnamu ograniczaly swoja obecnosc na terenie operacji do zaopatrzenia i doradztwa wojskowego. Cos musialo sie zmienic przed jedna z akcji ofensywnych Vietcongu. Bojownicy w sile batalionu przejely wyspy na rzece, ktore wykorzystuja teraz jako blokade ruchu na rzece oraz jednej z kilku przepraw ladowych na zachodni brzeg. 
<br/>
<br/><br/><img image='ggg.jpg' width='450' height='300'/><br/>Wyposazenie Vietcongu<br/><br/>
<br/>

Kilka dni po skompletowaniu i przegrupowaniu, wojska US Marines sa gotowe do zadan. Mamy dzis za zadanie przejecie wspomnianych wysp i przeprawy ladowej, aby umozliwic wojskom sojuszniczym patrole rzeki i odsunac Vietcong na zachodni brzeg. Jako wsparcie sztab operacyjny przydzielil nam samolot Skyraider, ktory moze przeniesc ogrom uzbrojenia na raz. Do tego zestawy przypisano nam kilka M113, gdzie jednym z nich jest pojazd z miotaczem ogania i inny z dzialem bezodrzutowym. Dowodztwo generalne przygotowuje plan Agent Orange na tych terenach, a ludnosc cywilna zostala juz poinformowana o ewakuacji droga bomb propagandowych z ulotkami. Zgodnie z tym zakladamy, ze cywili nie powinno byc na terenie operacji. Mamy zielone swiatlo na rownanie z ziemia zagrozenia.

<br/><br/><img image='skyraider.jpg' width='450' height='300'/><br/>Skyraider moze przenosic np. 6 napalmow, rakiety, kasetowe plus dzialko - he is the pretty one 


</font>
<br />
<br />

"
]
];
