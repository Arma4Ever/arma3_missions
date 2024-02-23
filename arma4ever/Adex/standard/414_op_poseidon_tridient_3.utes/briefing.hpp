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
"Techniczne",
"
<font size='20'>Techniczne:</font></font>
<br />
<br />

<br /> - Callsign'y druzyn mogą być zmieniane przez dowódców operacji
<br /> - O zaliczeniu zadan decydują dowódcy operacji
<br /> - Piloci śmigłowców posiadaja uprawnienia inzynieryjne
<br /> - W skrzynkach są MicroDAGR'y, jak starczy to może je pobrać każdy.
<br /> - Dowódcy drużyn wybierają specjalizacje swoim operatorom (każdy posiada uprawnienia medyka.)
<br /> - W przypadku skakania do wody przez operatorów ION, zaleca sie to robic z tylnej czesci lotniskowca, z obniżonych balkonów, unikniecie w ten sposób stłuczeń od uderzenia w wode.
"
]
];


player createDiaryRecord [
"Diary", [
"Wyposażenie",
"
<font size='20'>Wyposażenie:</font></font>
<br />
<br />

<font size='16'>Wyposażenie Navy:</font></font>
<br /> - 6x Ponton Szturmowy (5os.)
<br /> - 1x AH-6M Little Bird (2os + 2 pilotów) Uzbrojenie: 14 rakiet, 2x działka minigun
<br /> - 1x AH-6M Little Bird (6os + 2 pilotów) Transportowy.

<br />
<br />
<br />
<font size='16'>Wyposażenie ION:</font></font>
<br /> - 6x Ponton Szturmowy (5os.)
<br /> - 1x AH-6M Little Bird (2os + 2 pilotów) Uzbrojenie: 14 rakiet, 2x działka minigun
<br /> - 1x AH-6M Little Bird (6os + 2 pilotów) Transportowy.

"
]
];



player createDiaryRecord [
"Diary", [
"Sily wroga",
"
<font size='20'>Sily wroga</font></font>
<br />
<br />
<font size='16'> 

Brak szczegółowych danych. </font>
<br />
<br />
"
]
];


player createDiaryRecord [
"Diary", [
"Briefing + Zadania",
"
<font size='20'>Briefing:</font></font>
<br />
<br />
<font size='16'> 

Witajcie żołnierze Navy oraz ION, z posiadanych informacji wynika że na wyspie UTES przemytnicy przetrzymują 6 porwanych wysoko postawionych naukowców. Z tego też powodu postanowiliśmy zaangażować w całą operacje nie tylko marynarkę wojenną, ale także grupę ION, która specjalizuje się głównie w odbijaniu zakładników, oraz ochroną VIP'ów. Teren operacji jest niewielki, dlatego liczymy na sprawną współpracę między dowódctwem Navy oraz ION. Musicie działać szybko i precyzyjnie.
<br />
<br />
Uwaga: Nie wiemy czego możemy się spodziewać na samej wyspie, uważajcie do czego strzelacie, bo nie wykluczamy obecności cywilów w rejonie operacji!
<br />
<br />
Uwaga v2: Niszczcie każdy wrogi sprzęt jaki uda Wam się przejąć, nie możemy pozwolić aby wróg wykorzystał go ponownie.

</font>
<br />
<br />

<font size='20'>Zadania:</font></font>
<br /> - Zabezpieczyc 6 porwanych naukowców
<br /> - Zniszczyć cały wrogi sprzęt znajdujący się na wyspie
<br /> - Zabezpieczyć ewentualnych cywili.



<br />
<br />
<img width='360' image='data\marynarka.jpg' /><br /><br />

"
]
];

