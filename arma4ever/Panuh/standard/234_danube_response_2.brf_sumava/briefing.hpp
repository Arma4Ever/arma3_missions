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
W rejonie operacji znajduje sie lotnisko logistyczne wojsk Ukladu Warszawskiego. Wynika z tego, ze mozecie spodziewac sie doslownie wszyskiego. Wiemy, ze jest tam duzo obrony PLOT. Z notatek wywiadu i meldunkow partyzantow mozemy stwierdzic, ze operuja tutaj:
<br/><br/>
Ludowe Wojsko Polskie<br/>
- 2 plutony zmechanizowane BMP<br/>
- 2 kompanie logistyczne<br/>
- nieznane ilosci oddzialow rozpoznania<br/>
- 2 plutony czolgow<br/>
- 1 szwadron lotnictwa transportowego<br/>
- 2 kompanie piechoty<br/>

<br/>
Wojska Radzieckie<br/>
- 2 plutony zmechanizowane BMP<br/>
- 1 kompania zmotoryzowana BTR<br/>
- 1 szwadron lotnictwa bojowo-transportowego MI8, Mi24<br/>
- 2 szwadrony lotnictwa bojowego MIG21<br/>
- mozliwy 1 klucz lotnictwa taktycznego<br/>
- 1 batalion piechoty<br/><br/>

Czechoslowacka Milicja Obywatelska<br/>
- patrole zmotoryzowane w sile kompanii<br/><br/>

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
Warunki meteo 20:20 17.07.1973:<br/>
- pełnia księżyca<br/>
- zachmurzenie duże<br/>
- lekkie zamglenie, szczególnie w niższych partiach terenu<br/>
- wiatr umiarkowany<br/>
<br/>
Dane operacyjne:<br/>
Strefa zdemilitaryzowana i tereny przy niej zostaly opustoszale. W takowych znikoma aktywnosc cywilna. <br/>
Mieszkancy wiosek w duzej mierze pozostali w miejscach zamieszkania.<br/>
Cywile są nastawieni neutralnie, aczkolwiek trzeba brać poprawkę na obecność kolaborantów.<br/>
<br/>
Wyposażenie FOB McMaker:<br/><br/>
Pojazdy:<br/>
- 2x HMMWV FIM-92F x2 AA - Pinapple<br/>
- 1x HMMWV Ammo - Pinapple<br/>
- 2x M939 Ammo, przezbrojenie<br/>
- 2x M939 Fuel<br/>
- 3x M939 Transport<br/>
- 4x UH1H Transport (10os cargo)<br/>
- 2x UH1H Gunship (10os cargo)<br/>
- 2x CH-47 Chinook(26os cargo)<br/><br/>
Przezbrojenie:<br/>
- każda jednostka posiada predefiniowany ekwipunek<br/>
- radia długie tylko dla RTO (namiot HQ ma skrzynke z radiami)<br/>
- radia średnie tylko dla dowódców drużyn, sekcji i pojazdów<br/><br/>
Podstawowe wyposazenie:<br/>
- M16 Carbine + tlumik<br/>
- M1911<br/>
- M14 + Burris x4 + tlumik (wyborowy)<br/>
- M3 MAAWS (strzelec AT)<br/>
- FIM-92F Stinger (strzelec AA)<br/><br/>


Dodatkowe wyposazenie - skrzynki:<br/>
- MP5SD<br/>
- M16A2 + tlumik<br/>
- M16A2 GL + tlumik<br/>
- saperki<br/>
- ladunki wybuchowe, zapalniki, zestawy do rozzbrajania<br/>

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
Czechoslowacja, lipiec 1973<br/>
FOB McMaker<br/>
Historia alternatywna<br/><br/>

Trwa zimna wojna. Blok zachodni robi co w jego mocy, aby byc przygotowanym do wojny atomowej. Sowieci opracowuja nowe modele i symulacje ataku krajow NATO. Dochodzi do obszernych przygotowan arsenalow nuklearnych panstw Ukladu Warszawskiego.

<br/><br/><img image='czechcover.jpg' width='1000' height='300'/><br/><br/>

Podczas interwencji zbrojnej Polski i ZSRR na Czechoslowacje 21 sierpnia 1968 roku sily agresora napotkaly ograniczony opor. Ostal sie tylko skrawek Czeskiej ziemi, ktory lezy za rzeka. Kraje zwiazkowe Ukladu Warszawskiego zajely tereny przygraniczne, gdzie istnial najwiekszy urodzaj drogocennych izotopow. Komunisci na dobre zadomowili sie na tych terenach. Ludnosc cywilna w poplochu rozpoczela migracje, a na terenach przygranicznych spolecznosci wymarly. Na ulicach miast zaczeto stosowac godziny policyjne, a lokalne posterunki policji zamieniono w katownie FSB i polskiego WSI. 
Okoliczne okupowane miejscowosci zostaly zasiedlone Polskimi osadnikami m.in. ze Slaska i Malopolski, gdzie wiekszosc stanowi gorcznicza klasa robotnicza. Wszelkie mosty zostaly wysadzone, a wzdloz granicy zostala rozstawiona nowo utworzona Czechoslowacka Milicja Obywatelska.
<br/>
<br/><br/><img image='obraz1.jpg' width='500' height='300'/><br/><br/>
<br/>
W odpowiedzi na kryzys migracyjny, w miejscowosci Susice rozdysponowano baze ONZ. 
<br/>
W roku 1971 tworzy sie zbrojny ruch opozycji. Partyzanci szybko nawiazuja kontakty z wywiadem zachodnim i infiltuje dzialania Ukladu Warszawskiego. Zostaje on jednak szybko wyparty przez sily Ludowego Wojska Polskiego i zmuszony do wycofania poza zelazna kurtyne. Aktualnie ruch prowadzi ograniczone raidy na tereny demilitaryzowane. Wojska Ukladu Warszawskiego w reakcji rozpoczal swoje rajdy na te tereny. 
<br><br/>
Koncem czerwca 1973 roku partyzanci raportuja o wzmozonym ruchu Polskich wojsk zaopatrzeniowych. Prowadza one nastepne z kolei grabierze dobr materialnych. W lipcu dostajemy potwierdzenie tego precedensu - wrog ukradl metale ciezkie droga kolejowa z Susice. 
<br/>
Wywiad USA wydaje polecenie tajnej misji w poszukiwaniu zasobow, ktore moga stac sie bronia A.

</font>
<br />
<br />

"
]
];
