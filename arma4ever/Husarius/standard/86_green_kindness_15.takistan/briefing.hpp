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
"Mapa Lotniska",
"
<img width='360' image='folder18tbzhentai\Map_Airfield_North.jpg' />
<br />
<br />
<br />
Żółty - Baraki, drużyny są losowo przydzielone do własnych namiotów
<br />
Niebieski - Miejsce briefingu, HQ i Dowódcy startują w tym miejscu
<br />
Zielony - Punkt przezbrojenia, w tym wypadku sprzęt dla graczy znajduje się w kontenerach
<br />
Fioletowy - Miejsce składowania przydzielonych pojazdów
<br />
Czarny - Pojazdy zapasowe do pobrania w przypadku utraty orginalnie przydzielonych pojazdów
"
]
];

player createDiaryRecord [
"Diary", [
"Zalecenia i informacje Techniczne",
"
<br />
<br />
<font size='16'>- Godzina 06:15
<br />
- Data 26.11.2020
<br />
- Prędkość konwojowa: 40km/h
<br />
- Prędkość konwojowa w miastach: 30km/h
<br />
- Ludność niechętna do Czarnorusi, nie wchodzić do budynków cywili bez wyraźnego powodu
<br />
- Podczas wjazdu i przejazdu przez Darbang Pass, odległość między pojazdami nie większa niż 10 metrów! (Dotyczy również pojazdów saperów)
<br />
- Odległość między pojazdami Saperów a resztą konwoju (za wyjątkiem Darbang Pass) nie większa niż 25 metrów.
<br />
- Pojazd HQ trzyma się z pojazdami logistycznymi jeden za drugim
<br />
- Przy przezbrojeniu znajduje się skrzynka z arsenałem, są w niej tylko i wyłącznie kosmetyczne dodatki dla was w celu nadania wam
cech wyróżniających jeden od drugiego jeśli tego pragniecie, zakaz ładowania własnych template z arsenału
<br />
- W kontenerze dodatkowe radia długie, krótkie i średnie w razie braku przydziału (chociaż po ch*j wam długie jak w konwoju jedziecie)
<br />
- Dodatkowe pojazdy rezerwowe pobierać tylko w przypadku utraty przydziałowych, brać tylko te utracone
<br />
- Kierowcy Pojazdu i Strzelcy Pokładowi mają za zadanie opiekę nad ciężarówkami (M1083A1P2-B (O-GPK/M2)) z materiałami
<br />
- Nie ma żadnego limitu czasowego do wyjazdu z punktu startowego, spokojnie załadujecie dodatkowe medykamenty i amunicję do pojazdów
</font>
<br />
<br />
"
]
];

player createDiaryRecord [
"Diary", [
"Sojusznicy",
"
<br />
<br />
<font size='16'>W Feruz Abad operują Amerykanie z Sił Specjalnych z zadaniami anty-terrorystycznymi i likwidacją wrogich drużyn MANPAD.
<br />
IDAP operuje w rejonie jako wsparcie dla lokalnej ludności i pomoc lokalnej policji.
</font>
<br />
<br />
"
]
];

player createDiaryRecord [
"Diary", [
"Wyposażenie CDF",
"
<br />
<br />
<font size='16'>Karabin: ACR
<br />
Karabin Maszynowy: M240
<br />
Broń AT/AP: SMAW
<br />
Pojazdy MRAP: M1277 CROWS M2 x1 , M1277 CROWS Mk19 x1 dla Saperów + M1240A1 O-GPK M2 dla HQ
<br />
Pojazdy lekkie: M1151 O-GPK M2 x6 dla Utes (x3) i Chernogorsk (x3)
<br />
Pojazdy logistyczne: M1083A1P2-B O-GPK M2 dla kierowcy i strzelca pokładowego w HQ
<br />
<br />
<img width='360' image='folder18tbzhentai\CH_CoatOfArms.jpg' />
</font>
<br />
<br />
"
]
];

player createDiaryRecord [
"Diary", [
"Przeciwnik",
"
<br />
<br />
<font size='16'>Naszym wrogiem jak już wspomniałem jest ISIS, nie wiemy jak, skąd i dlaczego ale są dobrze
wyposażeni i wyszkoleni, nie dysponują jakąś ciężką techniką za wyjątkiem przerobionych pickup'ów czy jakiś staroci zabranych z 
opuszczonych magazynów Armii Takistanu.
</font>
<br />
<br />
"
]
];

player createDiaryRecord [
"Diary", [
"Cel Misji",
"
<br />
<br />
<font size='16'>Celem naszej misji jest zabezpieczenie lotniska na południu rejonu Feruz Abad, jego budowa została przerwana
trzy tygodnie temu po zamachu, będziemy wieźć podstawowe materiały budowlane których użyjemy do zbudowania prowizorycznego FOBu
na lotnisku do czasu przybycia odpowiedniego personelu i materiałów.
<br />
<br />
Będziemy poruszali się konwojem wyznaczoną trasą, dodatkowym celem jest rozbrojenie/wyeliminowanie jakichkolwiek min czy innych
rzeczy robiących boom jakie znajdziemy na drodze, jednostki US starają się zwalczać przyczółki ISIS z bronią MANPAD w celu oczyszczenia 
powietrza dla śmigłowców ale jest to trudne i powolne zadanie więc dla bezpieczeństwa naszych pilotów, konwój będzie się poruszał bez wsparcia
z powietrza.
</font>
<br />
<br />
"
]
];

player createDiaryRecord [
"Diary", [
"Sytuacja",
"
<br />
<br />
<font size='16'>Naszym zadaniem jest zabezpieczenie północno-wschodniej części Takistanu.
<br />
<br />
Miesiąc temu ISIS wykonało udany zamach na prezydenta Takistanu w stolicy TAKMYR, niedługo po tym nastąpiły zamachy w innych większych miastach
takich jak Chalang, Awdak, Karichar czy Bandar e-Ghazmi w dodatku nie ma jakiegokolwiek kontaktu z pomniejszymi miasteczkami, sytuacja jest
jeszcze w miarę stabilna na północno-wschodniej części kraju, Nasdara jest jedynym większym miastem w których nie wystąpiły jakiekolwiek 
zamachy czy ataki od strony ISIS, podejrzewamy że jest to ich stolica z której operują na reszte Takistanu.
<br />
<br />
Armia Takistanu szybko przeszła do działań anty-terrorystycznych ale po OPERATION ARROWHEAD ich Armia i Policja są w opłakanym stanie,
niezdolni do operowania na skale całego kraju, 18 Listopada 2020 roku, USA otrzymało oficjalną prośbę od rządu Takistanu o Interwencję przeciw
ISIS, ze względów logistycznych, USA zarządało o pozwolenie zaangażowania Czarnorusi jako sił wspierających USA z ograniczeniem o podleganiu
dowództwu US i ograniczenie operacji CDF na terenach północno-wschodnich.
<br />
<br />
22 Listopada, Siły USA i CDF rozpoczęły operację Green Kindness, obecnie (tj. 26 Listopada) 43 Batalion Inżynieryjny im. Begunova stacjonuje 
w rejonie Feruz Abad wraz z 27 Ekspedycją Marines wspieraną przez pozostałe jednostki US.
</font>
<br />
<br />
<img width='360' image='folder18tbzhentai\map_1.jpg' />
<img width='360' image='folder18tbzhentai\map_2.jpg' />
"
]
];
