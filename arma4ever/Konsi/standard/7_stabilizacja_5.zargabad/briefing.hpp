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
"Briefing",
"
<font size='20'>Briefing Stabilizacja</font>
<br />
<br />
<font size='14'>Od kilku lat dzialacie jako kontygent stabilizacyjny w sektorze miasta Zagrabad, dbajac o bezpieczenstwo, ochrone wolnosc oraz praw czlowieka. W ostatnich dniach nie dochodzilo do zadnych incydentow, ktore wymagalyby naszej interwerncji. Wasze zadania opieraly sie w glownej mierze na szkoleniu miejscowej policji, wojska oraz wspieraniu miejscowych sluzb w zapewnieniu bezpieczenstwa lokalnej ludnosci. Jednak pamietajcie, ze wasze glowne zadanie to utrzymac porzadek w sektorze oraz interweniowac w przypadku jego zaklocenia i podjac wszelkie srodki do przywrocenia ladu i porzadku.  Wedlug plotek, wasza sluzba w miejscie Zagrabad ma niedlugo sie zakonczyc i zostaniecie przeniesieni do innej miejscowosci, ktora bedzie potrzebowala waszej pomocy. Na chwile obecna zostajecie w gotowosci i podlegacie pod dowodce FOB, w celu wspierania dzialan podejmowanych na waszym terenie. 
<br />
<br />
Wróg w rejonie to typowa bojówka, bez specjalnego wyszkolenia oraz sprzętu.  Na podstawie danych wywiadowczych oraz doświadczenia zebranego podczas działań. Wróg dysponuje bronią produkcji wschodniej oraz pojazdami osobowymi wyposażonymi w karabiny maszynowe. Podczas prowadzonych działań na zewnątrz, zwracajcie uwagę na podejrzane elementy infrastruktury lub otoczenia. Główną formą walki prowadzoną przez miejscową bojówkę jest przygotowywanie zasadzek na nasze konwoje. Miasto i okoliczne wioski zamieszkałe są przez ludność cywilną, zatem nie muszę powtarzać o zasadzie identyfikacji celu podczas prowadzenia działań, nie chcemy kolejnej burzy politycznej odnośnie śmierci niewinnych cywili.
<br />
<br />
Wyposazenie
<br />
1x Helikopter UH 60
<br />
2x AH 6 little bird
<br />
10x HMMWV M2
<br />
2x techniczny
<br />
Wyposazenie US Army
<br />
</font>
<br />
<br />
"
]
];


player createDiaryRecord [
"Diary", [
"Techniczne",
"
<font size='20'>Techniczne <font color='#0066FF'>misji</font></font>
<br />
<br />
<font size='16'>Zadania nie zaliczaja sie automatycznie, status zadania pozostaje w kwesti HQ
<br />
<br />
W trakcie misji pojawiac sie beda nowe zadania oraz informacje ktore beda posiadac narzucony status pilne, zwykle
<br />
<br />
Misja posiada przedmioty, z ktorymi mozna wchodzic w interacje
<br />
<br />
Kryptonimy jednostek na misji przedstawione sa w formie liczb, prosilbym uzywac w celu wylowania danej jednostki uzywania trzech ostatnich cyft. 700 do 315. HQ ma prawo do zmiany kryptonimow na inne ktore uzna za wygodniejsze.
</font>
>
"
]
];
