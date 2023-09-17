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
<font size='16'>24 lutego 2022 roku Rosja rozpoczęła inwazję na Ukrainę. Jednym z pierwszych zajętych dużych miast stał się Mariupol, wojska FR posuwały się jednak znacznie dalej.
<br />
Z czasem przyszedł czas na Ukraińską kontrofensywę, która pozwoliła na podejście w okolice przedmieść Mariupola.
<br />
Jesteście grupą bojową sformowaną z połączonych jednostek Pułku Azow oraz 92 brygady zmechanizowanej. Waszym zadaniem jest wyeliminowanie rosyjskiego konwoju, który według naszych
wywiadowczych niebawem będzie ruszał w stronę miasta, a także że zajęcie Mariupola. Dowództwo liczy na to, że uda Wam się wyeliminować znajdujące się tam rosyjskie wyrzutnie
BM-21 Grad, oraz radar obrony przeciwlotniczej, który postawiony jest na wschód od miasta. 
<br />
</font>
"
]
];

player createDiaryRecord [
"Diary", [
"Wyposażenie",
"
<font size='16'>
Pluton AZOW:
</br>
- AK-103 Zenitco
<br />
- AK-103(GP-25)/B13
<br />
- Minimi
<br />
- UAR 10
<br />
- RPG-7
<br />
- CARL GUSTAF M3
<br />
- RPG-26
<br />
- GAZ-2330/2331 Tigr x2
<br />
<br />
Pluton piechoty liniowej:
<br />
- AKMN
<br />
- AKMN(GP-25)
<br />
- PKM
<br />
- CARL GUSTAF M3
<br />
- RPG-26
<br />
- 3x URAL-4320
<br />
<br />
Pojazdy:
<br />
- BWP-2K x2
<br />
- BRADLEY M2A2
<br />
- T-80UE-1
<br />
Artyleria:
- M109A6
<br />
Logistyka:
<br />
- 3 pojazdy logistyczne URAL-4320 do naprawy i przezbrajania
<br />
- 3 pojazdy logistyczne URAL-4320 do tankowania
<br />
</font>
"
]
];

player createDiaryRecord [
"Diary", [
"Informacje o przeciwniku",
"
<font size='16'>
Piechota rosyjska wyposażona w AK-74M i PKM.
<br />
Mogą pojawić się karabiny wyborowe SVD.
<br />
Wszelkiego rodzaju pojazdy typu BMP, BTR, czołgi T72 i T80 w różnych wersjach. 
<br />
Wróg dysponuje moździerzami.
<br />
<br />
</font>
"
]
];

player createDiaryRecord [
"Diary", [
"Zalecenia i informacje",
"
<font size='16'> - Zasięg widzenia ograniczony do 700m
<br />
- Czas przyspieszony, dzień trwa 20 minut, noc 40 minut
<br />
- Ludność cywilna, która została w mieście ukrywa się w piwnicach, schronach lub szpitalach. Zakaz ostrzału szpitali.
<br />
- W skrzyniach znajdują się po 3 MicroDagry dla dowódców i strzelców wyborowych.
<br />
- Sekcja logistyczna to jedyne 4 osoby, które posiadają możliwość naprawienia pojazdu w pełni.
<br />
- Załoga pojazdu może naprawić pojazd tylko częściowo (kolor żółty)
<br />
- Dowództwo przewiduje po jednym pojeździe zamiennym każdego typu
<br />
- Skrzynie można pobierać poprzez interakcję na stole w miejscu rozpoczęcia misji.
<br />
- ZAKAZ pobierania nowych skrzyń przed wyruszeniem piechoty, musi wam wystarczyć to, co przygotowało dowództwo.
<br />
- Zablokowano możliwość podnoszenia skrzyń z początkowym przezbrojeniem.
<br />
- Zredukowano miejsce na wyposażenie w pojazdach (Cargo Space)
<br />
- Wszyscy dowódcy posiadają bronie z podwieszanym granatnikiem
<br />
<br />
</font>
"
]
];