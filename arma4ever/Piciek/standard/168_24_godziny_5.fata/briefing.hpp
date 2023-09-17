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
"6. OD MM",
"
<font size='16'>
- Z niektórymi postaciami AI można zrobić interakcję. Także z reguły sprawdzajcie żywe lub martwe AI. Dzięki temu popchnie to fabułę do przodu oraz będą się aktywować kolejne zadania.<br />
- Dialogi z AI można powtarzać, jeżeli ktoś wolno czyta. Przekazujcie sobie pełne informacje, aby nie było nieporozumień. <br />
- Dla wszystkich są dostępne tylko pojazdy lądowe <br />
- To moja druga misja, więc na pewno coś może pierdolnąć. Gdyby były problemy z wyposażeniem, bądź głupimi błędami Army - zgłaszać się do Zeusów. <br />
- Czas w grze będzie przyspieszany przez zeusa w miarę postępów misji <br />

</font>
<br /><br />
<br /><br />
"
]
];

player createDiaryRecord [
"Diary", [
"5. ZASOBY",
"
<font size='16'>
US Army:<br />
Jako, że nasze wojska są w trakcie wycofania, większość naszego sprzętu została już wywieziona, także nasze zasoby są dość okrojone. <br />
Amunicji i sprzętu medycznego jest w brut, ale problem jest z radiami PRC-152 oraz MicroDAGR, każdego jest po 20, także nie dla wszystkich starczy. Dwa stanowiska przezbrajania są przy barakach, przezbrajacie się z należytą kulturą i nie róbcie zbędnego bałaganu. Skrzynka medyczna znajduje się przy namiocie medycznym (obok HQ). <br /><br />
IDAP: Szafka z ograniczonymi zasobami znajdziecie w skrzynce w budynku.

</font>
<br /><br />
<br /><br />
"
]
];


player createDiaryRecord [
"Diary", [
"4. CYWILE",
"
<font size='16'>
Szczególną uwagę należy zwrócić na cywili. W większych miastach jest ich dosyć sporo, także trzeba uważać do kogo się strzela.<br />
Ogólnie rzecz biorąc cywile są przyjaźnie nastawieni do nas, lecz nie można nikomu ufać.
</font><br /><br />


<br /><br />
<br /><br />
"
]
];

player createDiaryRecord [
"Diary", [
"3. WRÓG",
"
<font size='16'>
Wywiad donosi, o przebudzeniu licznych ugrupowań terrorystycznych w całym kraju, to również może się tyczyć prowincji FATA. <br />
Również otrzymaliśmy wiadomość z irackiego przejścia granicznego, że pojawił się w kraju człowiek o imieniu Abu Bakr al-Baghdadi <br /> <br />
<img width='360' image='abu.jpg' /><br /><br />
Jest to groźny przestępca który ma na koncie liczne zamachy bombowe oraz nakłania innych do ataków na instytucje państwowe.<br />
Trzeba być przygotowanym na to, że w każdym momencie mogą zaatakować nas najemnicy z pomniejszych ugrupowań oraz ISIS.<br />
Dlatego też każdą informacje o wszelkich wrogich kontaktach należy brać na poważnie.

</font>
<br /><br />
<br /><br />
"
]
];

player createDiaryRecord [
"Diary", [
"2. ZADANIA",
"
<font size='16'>
US Army:<br />
Przez ostatnie dwa tygodnie zrobiło się dość gorąco, jeżeli chodzi o prowincję FATA. Pojawiły się liczne protesty, zabójstwa na tle religijnym oraz ataki na konwoje. <br />
- Iracka policja powinformowała nas o proteście w mieście Tottah. Boją się, że może się to przerodzić w coś większego, dlatego proszą nas o pomoc. <br />
- Dostaliśmy cynk, że jeden z mieszkańców wie coś więcej na temat bojówek w okolicy. Sprawdźcie to.<br /><br />
IDAP:<br />
Zadanie macie jedno, ochrona dyplomatów. Nie narażajcie swojego życia dla nich. Za mało wam płacą, abyście za nich umierali.
</font>
<br /><br />
<br /><br />
"
]
];


player createDiaryRecord [
"Diary", [
"1. SYTUACJA",
"

<font size='20'>24 Godziny<br /><br />

<font size='18'>Irak, 24.08.2012<br /><br />

<font size='16'>


Od 2008 roku panował względny spokój, jeżeli chodzi o ataki i zamachy. Bardzo wolnym krokiem udawało się wprowadzać demokrację w Iraku.<br />
Został powołany legalnie prezydent, zwerbowano oraz wyszkolono żołnierzy irackich. Wszystko miało się ku dobrego do momentu, kiedy prezydent ogłosił zakończenie operacji wojskowej oraz stopniowe wycofywanie wojsk USA oraz koalicji z Iraku. <br /><br />
Ten spokój został zakłócony i to w bardzo szybkim tempie. Zaczęła się seria zamachów. Pierwszy, dość duży rozpoczął się w Bagdadzie - conajmniej 80 zabitych<br /><br />

<img width='360' image='zamach1.jpg' /><br /><br />

Drugi, również w Bagdadzie - centrum miasta przy meczecie - zginęło 115 cywilów oraz 2 żołnierzy kanadyjskiego drugiego korpusu.<br /><br />

<img width='360' image='zamach2.jpg' /><br /><br />

Sytuacja nabrała tempa kiedy poszukiwany terrorysta Abu Bakr al-Baghdadi zapowiedział przejęcie władzy w kraju oraz nakłaniał wszystkich <br />
do podniesienia broni i walki z bandytami (czyli nami).<br />
Fala zamachów, zbrodni na ludnościach cywilnych i bardzo licznych ataków w stronę infrastruktury wojskowej przeniosły się na cały kraj.<br />
Wybudzone zostały różne komórki terrorystyczne, m.in ISIS i Al-Kaida.<br />
Iracka armia nie radzi sobie w niektórych częściach kraju, dlatego też trzeba mieć oczy dookoła głowy.

Z tego powodu amerykańską ambasadę wraz z dyplomatami bezpiecznie przeniesiono ze stolicy do przedmieść Tottah.<br />
Minusem jest to, że ambasada jest oddalona o ponad 7 km od bazy sił lądowych USA. Wywiad stwierdził, że tak będzie bezpiecznie, ponieważ ostatnimi czasy dochodziło do kilku incydentów w rejonach bazy. Dla dodatkowego bezpieczeństwa zatrudniono prywatną firmę ochroniarską IDAP, <br />
która słynie z byłych członków SEALS.
</font>
<br /><br />
<br /><br />
"
]
];