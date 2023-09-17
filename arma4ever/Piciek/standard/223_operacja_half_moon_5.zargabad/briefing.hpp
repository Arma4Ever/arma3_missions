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
"5. OD MM/podpowiedzi",
"
<font size='16'>
- Z niektórymi postaciami AI można zrobić interakcję. Także z reguły sprawdzajcie żywe lub martwe AI. Dzięki temu popchnie to fabułę do przodu oraz będą się aktywować kolejne zadania.<br />
- Dialogi z AI można powtarzać, jeżeli ktoś wolno czyta. Przekazujcie sobie pełne informacje, aby nie było nieporozumień. <br />
- Zakaz używania pojazdów opancerzonych. <br />
- To moja trzecia misja, więc na pewno coś może pierdolnąć. Gdyby były problemy z wyposażeniem, bądź głupimi błędami Army - zgłaszać się do Zeusa. <br />
- Kolejość zadań dowolna - wyjątkiem jest zadanie z rozbrojeniem głowicy <br />
- Niektóre wioski / bazy posiadają własny agregat prądotwórczy. Poprzez interakcję wyłączacie prąd. Powinno pomóc w ataku<br />
- AI w ciemności mają ograniczone pole widzenia, jednak po przejściu w tryb bojowy, mają zajebiste oko i widzą wszystko #Arma<br />
- Misja typu Stealh - bądźcie skoncentrowani, działajcie synchronicznie i bawcie się dobrze <br />
- Głowicę rozbraja tylko Saper - nikt inny nie tyka głowicy <br />
- Spadochroniarze najpierw zakładają własny plecak na przód [menu własna interakcja], a później zakładają spadochron na plecy <br />
- LZ zostaje wyznaczone przez HQ podczas Briefingu

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
Sporadyczne ilości cywilów na przedmieściach miasta. W samym mieście wprowadzono godzinę policyjną, także tutaj nie trzeba się będzie martwić o nieszczęśliwe wypadki.
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
Wywiad donosi, o dużej ilości jednostek zaznaczony na mapie która macie na stronie pierwszej [1.ZEBRANIE ZE SZTABEM].<br />
W większości są to zwykli poborowi nie mający jeszcze dużego doświadczenia bojowego.<br />
Ghost Zero którzy są już na terenie wroga zawiadomił nas o lepiej doposażonych żołnierzach którzy kręcą się często przy meczecie w centrum miasta.<br />
Podejrzewamy, że są to jednostki do zadań specjalnych.<br />
Liczne patrole w przedmieściach i na niektórych skrzyżowaniach. Większość jest wyposażona w karabiny AK-74.

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
1) Zneutralizować generała Khodaei. Zwiad doniósł o jego obecności w bazie wojskowej nad Zargabadem<br /><br />
<img width='360' image='b5.jpg' /><br /><br />
2) Zneutralizować Szakala. Gość przebywa w swojej willi nieopodal Zargabadu<br /><br />
<img width='360' image='b1.jpg' /><br /><br />
3) Znaleźć i ewakuować naukowca Mohsena Fakhrizadeha<br /><br />
<img width='360' image='b3.jpg' /><br /><br />
4) Znaleźć i rozbroić głowicę nuklearną<br />
5) Znaleźć i zneutralizować pozostałych oficerów współpracujących z Khodaei<br />
6) Wyłączyć wieżę radiową, aby skrócić zasięg nadawania i odbierania komunikatów radiowych
</font>
<br /><br />
<br /><br />
"
]
];


player createDiaryRecord [
"Diary", [
"1. ZEBRANIE ZE SZTABEM",
"

<font size='20'>Operation Half Moon<br /><br />

<font size='18'>Zargabad, Iran 13.02.2023<br /><br />

<font size='16'>


Dzień dobry Panowie.<br />
Ściągnięto was z różnych stron świata, ponieważ od niedawna mamy pierwszy stopień DEFCON. Od teraz jesteście w elitarnej grupie ION. Do rzeczy <br/>
20 stycznia konwój przewożący głowicę z ośrodka badań jądrowych w miejscowości Bushehr w Iranie został zaatakowany przez grupę buntowników Generała Khodaei.<br />
W Iranie podwyższono poziom zagrożenia terrorystycznego oraz postawiono wszystkie służby w celu poszukiwania głowicy na terenie całego kraju. <br /><br />

Nie pomagał fakt, że Generał Khodaei który kiedyś słynął z lojalności, teraz walczy o władzę buntując się przeciwko Najwyższemu przywódcy Ajatollah Ali Khamenei. W tym celu, kilka lat temu oddzielił się od struktury państwowego wojska i założył własną grupę wcielając do nich sporą ilość swoich zwolenników. Także Iran zwrócił się do nas z prośbą o pomoc w odnalezieniu głowicy oraz generała.<br /><br />

8 lutego nastąpił przełom i całe ugrupowanie zostało odnalezione w małej miejscowości Zargabad dzięki naszej grupie zwiadowczej. Poniżej przedstawiam wam mapę sytuacyjną: <br /><br />

<img width='480' image='b4.jpg' /><br /><br />

Na czerowono zaznaczono dużą ilość jednostek wroga. Należy je zneutralizować. <br />
Na niebiesko zaznaczona jest pozycja naszego zwiadu oraz miejsce ewakuacji gdy już wypełnicie wszystkie cele.<br /><br />

Nie wiemy jaki jest cel generała, czy chodzi o okup, czy chęć zaatakowania własnego lub innego państwa. Nie zmienia to faktu, że jest to spore zagrożenie w skali światowej.<br />
W konwoju zgineli wszyscy żołnierze którzy eskortowali transport. Nie znaleziono natomiast ciał naukowców z Narodowego Centrum Badań Jądrowych więc uważamy, że Khodaei ich uprowadził i chce wykorzystać do detonacji bomby. Głównym naukowcem jest niejaki Mohsen Fakhrizadeh <br /><br />

<img width='360' image='b3.jpg' /><br /><br />

który jest głównym architektem i kierownikiem całego projektu stworzenia pierwszej głowicy nuklearnej przez Iran. Po odnalezieniu go, wywieźcie z kraju. <br />
Generał sam tego wszystkiego nie zaplanował. Od zwiadu dowiedzieliśmy się, że pomaga mu w tym niejaki 'Szakal' - handlarz bronią pochodzący z Polski.<br /><br />
Resztę informacji dowiecie się na następnych stronach.
</font>
<br /><br />
<br /><br />
"
]
];