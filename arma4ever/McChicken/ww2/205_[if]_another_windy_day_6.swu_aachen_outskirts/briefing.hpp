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
- HQ może żądać dostarczenia amunicji od Company HQ. Jeżeli zabezpieczycie przyczółek przyjedzie do was ciężarówka z skrzynką (obsługiwane przez Zeusa);
<br />
- Maksymalny zasięg widzenia to 700m. Jeżeli ustawicie sobie większy misja sama wam zresetuje zasięg widzenia do 700m. Możecie ustawić sobie mniejszy;
<br />
- Misja jest zbalansowana pod współdziałanie piechoty i pojazdów w mieście;
<br />
- Markery ustawione przez MM (z wyjątkiem oznaczeń potencjalnych pól minowych) zostaną usunięte podczas trwania INTRO.
<br /><br />
2. Zadania
<br />
- Na terenie operacji znajduje się sporo flag. Wszystkie flagi są interaktywne i mogą zostać przejęte. Przejmowanie flag jest warunkiem zaliczenia zadań;
<br />
- Zadania najniższego tieru zaliczają się automatycznie;
<br /><br />
3. Przezbrojenie<br />
- Zabrania się pobierania MP-40, MP-44 a w szczególności MG-34 i MG-42 od zabitych żołnierzy, oraz wyrzutni AT przez inne osoby niż strzelec AT! Możecie wzywać amunicję, a przydzielona wam broń jest elementem balansu misji;
<br />
- Jeżeli ktokowiek ma jakiekolwiek radio (poza plecakami RTO) jest to błąd misji i należy je wyrzucić na starcie. Załogi pojazdów mają tylko radio ''pojazdowe'';
<br />
- Karabiny 'BAR' są tylko dla strzelców KM jako opcjonalny wybór;
<br />
- KM na wyposażeniu Shermanów jest tylko i wyłącznie do dyspozycji załogi czołgu (np. dowódca na górnym włazie);
<br />
<br />
4. Pojazdy <br/>
<br />
- Kierowca shermana jest zaawansowanym mechanikiem, Strzelec zwykłym a dowódca ma dwie lewe ręce do roboty;
</font>
"
]
];

if (player == A4E_OperationCommander) then  {
  player createDiaryRecord [
  "Diary", [
  "G) Pola minowe",
  "
  <font size='16'>Ten wpis widzi tylko dowódca operacji.
  <br />
  <br />
  Zwiad informuje, że prawdopodobnie na <marker name='marker_34'>północny zachód</marker> i <marker name='marker_38'>zachód</marker> od miasta znajdują się pola minowe.
  <br />
  <br />
  Dostaliśmy zgodę na jednorazowe zaangażowanie dywizjonu artyleryjskiego ''Easy-William-Zebra'' do ostrzału tych pozycji. Zmasowane uderzenie artylerii prawdopodobnie zniszczy zdecydowaną większosć zapory minowej, dodatkowo pociski 155mm utworzą wiele lejów, z których piechota będzie mogła korzystać w ramach osłony.
  <br />
Niemniej ostrzał ostrzeże Niemców o nadchodzącym ataku i odbierze wam element zaskoczenia. W przeciwnym wypadku ryzykujecie przedzieranie się przez pola minowe.
  <br />
  <br />
  Ostateczna decyzja pozostaje w kompetencji dowódcy operacji. (Interakcja osobista dowódcy).
  </font>
  "
  ]
  ];
};



player createDiaryRecord [
"Diary", [
"E) Dostępne środki i zaopatrzenie",
"
<br />
<br />
<font size='16'>Kwatermistrzostwo nie żałowało wam amunicji i medykamentów. Dostaliście kilka skrzyń amunicji, kolejne możemy dotransportować w rejon operacji po wezwaniu przez radio (Sztab Kompanii, 57MHz, kod wywoławczy ''Easy-Able-Able''), pod warunkiem zabezpieczenia przyczółka do odbioru zaopatrzenia.
<br />
<br />
Zaopatrzenie, którego dowódca operacji może żądać od dowództwa kompanii:
<br />
- Amunicja (skrzynka lub ciężarówka),
<br />
- Medykamenty (skrzynka lub cieżarówka),
<br />
- Pojazd medyczny,
<br />
- Cysterna z paliwem,
<br />
- Pojazd serwisowy (amunicja dla pojazdów + naprawy),
<br />
<br />
Ciężarówki zaopatrzeniowe mogą dotrzeć tylko do zabezpieczonych i spokojnych sektorów.
<br />
W pobliże rejonu walk dojechać może tylko transporter M3 ze skrzyniami amunicji i medykamentów.
<br />
<br />
Shermany mogą uzupełnić zapasy w przejętych magazynach wroga, część wyposażenia powinna być kompatybilna.
<br />
<br />
Ze względu na obecność cywili i tendencję Niemców do wykorzystania zabudowań cywilnych do obrony dowództwo kompani zdecydowało o nieprzydzieleniu wam wsparcia artyleryjskiego czy lotniczego.
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
<font size='16'>Lokalna ludność znajduje się pod okupacją nazistów od 28 maja 1940. Prawdopodobnie po pierwszych wystrzałach ludność cywilna poszuka schronienia, jednak miejcie na uwadze przez cały czas trwania operacji obecność cywili w rejonie działań!
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
<font size='16'>Spodziewamy się głównie żołnierzy wermachtu. Wiemy, że dysponują ograniczoną liczbą jednostek szybkiego reagowania wyposażonych w transportery Sd.Kfz. 251 oraz czołgami PzKpfw IV. Według zdjęć lotniczych znaczną część wyposażenia, m.in. czołgi PzKpfw VI Tiger z 101 batalionu czołgów ciężkich Waffen-SS przerzucili w inne lokalizacje na podstawie naszej kampanii dezinformacyjnej.
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
<font size='16'>Zgodnie ze strategią dezinformacyjną Niemcy spodziewają się uderzenia głównych sił za dwa tygodnie. Prawdopodobnie zdołali już przygotować częściowo umocnienia i zapory w rejonie, jednak sam szturm powinien być dla nich zaskoczeniem. Okolice miast Saint-Niklaas i Bornem stanowią bazę odpoczynkową dla nazistów, spodziewajcie się więc pomimo zaskoczenia silnego oporu w rejonie.
<br />
Wskazaliśmy lokalizacje, w których potencjalnie możecie spodziewać się pól minowych.
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
<font size='16'>Żołnierze! <br />
Aby rozwiązać problemy z zaopatrzeniem i logistyką potrzebujemy skrócić łańcuch logistyczny. Zajęcie portu w Antwerpii umożliwiłoby dostarczanie zapasów Skaldą bezpośrednio z Anglii. Musimy przesunąć linię frontu o kilkadziesiąt kilometrów na wschód zanim będziemy mogli przeprowadzić bezpośredni szturm na miasto. Tymczasem jedna z krytycznych linii zaopatrzeniowych przebiega przez Sint-Niklaas i Bornem. Waszym zadaniem będzie wyzwolenie okupowanych ziem i zabezpieczenie głównych dróg. Niemcy mogą być zdesperowani, będą zacięcie walczyć o każdy kawałek ziemi leżący pomiędzy nami a Skaldą. Przygotujcie się na długą i monotonną walkę o każdy budynek. Do tego zadania zostaje przydzielony pluton doświadczonych żołnierzy z 101 dywizji powietrznodesantowej wsparty przez 2 shermany z Wielkiej Czerwonej Jedynki. Jeden z czołgów posiada najnowszą, zmodernizowaną armatę o średnicy 76mm. Powinien wam znacznie ułatwić zadanie. Operacją będzie dowodził porucznik Cichy.
<br />Niech Bóg ma was w swojej opiece.
<br />Powodzenia.
</font>
"
]
];
