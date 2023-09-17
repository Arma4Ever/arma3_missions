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
<img width='560' image='data\brief.jpg' />
<br />
<br />
<font size='20'>Briefing</font>
<br />
<br />
<font size='16'>11.06.2022r. rozpoczyna się 'Wielka Kontrofensywa' ma ona celu wyparcie Rosjan za linię brzegową Dniepru. O godzinie 05:00 pluton zmotoryzowany Artem rozpocznie atak z kierunku Krzywego Rogu. Pluton Artem otrzyma wsparcie plutonu pancernego Anna oraz baterii artylerii Vlad. Punktem przełomowym ofensywy jest zajęcie Mykołajiwki i Roztannyi broni ich cała kompania wroga przy wsparciu plutonu czołgów. Drugim ważnym punktem jest likwidacja punktu zbornego jednostek specjalnych w miejscowości Zelene Pole.
<br />
<br />
Dalsza faza operacji przewiduje odcięcie wroga od zaopatrzenia poprzez zajęcie Sofijiwki oraz Liubymivki. Pomiędzy tymi pozycjami wróg umocnił jedno ze wzniesień, które może stanowić bardzo problematyczny punkt oporu dla kolejnej fazy ofensywy.
<br />
<br />
Ostatnie faza operacji przewiduje przebicie się i zajęcie Preobrazhenki i Bereznuvativki, w pierwszej z miejscowości wróg umieścił radar artyleryjski, który jest dla wroga kluczową infrastruktura. Wróg tak łatwo jej nie odpuści, jednak zniszczenie tego radaru ułatwi pracę sojuszniczej artylerii.</font>
"
]
];

player createDiaryRecord [
"Diary", [
"Wstep",
"
<img width='560' image='data\wstep.jpg' />
<br />
<br />
<font size='20'>Wstep</font>
<br />
<br />
<font size='16'>Ukraina została zaatakowana przez Rosję zaraz na początku 2022. Sytuacja ta zmobilizowała cały naród do obrony swojego państwa. Jednak pomimo stawianego oporu Rosjanie swoją siła przebijają się coraz dalej w głąb kraju. Rosyjska ofensywa spowolniła dopiero podczas przebijania się przez Dniepr. Strona Ukraińska przygotowała silną linie umocnień po zachodniej stronie rzeki, co przełożyło się na bardzo duże straty wśród wroga. W połowie roku Rosjanie wstrzymali ataki i utrzymali zajmowane pozycje. W tym samym czasie na teren Ukrainy zaczęło spływać mnóstwo zachodniego sprzętu. Ukraińska armie zaczęła się umacniać i planować kontratak, wykorzystując chwilowe osłabienie wroga. Kontrofensywa miałaby zakładać wypchnięcie Rosjan z powrotem na wschodni brzeg Dniepru.</font>
"
]
];

player createDiaryRecord [
"Diary", [
"Wyposazenie",
"
<img width='560' image='data\sojusznik.jpg' />
<br />
<br />
<font size='20'>Wyposazenie</font>
<br />
<br />
<font size='16'>Dowódca artylerii dysponuje mobilny radarem artyleryjskim.
<br />
<br />
Broń: AK-74, Ak-74 (GP-25), AKS-74, RPG-7, SWD, PKM, RPK 74
<br />
<br />
Pojazdy: 4x BTR-80, 3x T-72BB, 3x M109, 3x Humvee (Nieuzbrojony), 2x Ural (Transport), 2x Ural (Serwisowy)</font>
<br />
<br />
"
]
];

player createDiaryRecord [
"Diary", [
"Przeciwnik",
"
<img width='560' image='data\wrog.jpg' />
<br />
<br />
<font size='20'>Przeciwnik</font>
<br />
<br />
<font size='16'>Regularna Rosyjska Armia, dysponująca pojazdami opancerzonymi typu BTR oraz BWP, czołgami T-72 (zwiad donosi, że możliwe jest wystąpienie również czołgów T-90). Z informacji dostarczonych przez wywiad wiemy, że przeciwnik rozmieścił w rejonie operacji dwie baterie moździerzy oraz radar artyleryjski, który skutecznie będzie utrudniał wsparcie naszej artylerii (znamy tylko ich przybliżone położenie). Piechota uzbrojona jest w AK, PKM oraz wyrzutnie RPG-7. Przy linii frontu zauważono również jednostki specjalne. Jednak nie mamy żadnych szczegółowych informacji na ich temat.</font>
"
]
];

player createDiaryRecord [
"Diary", [
"Cywile",
"
<font size='20'>Cywile</font>
<br />
<br />
<font size='16'>Na terenie operacji nadal znajdują się cywile. Należy ograniczyć straty w ludności cywilnej oraz infrastrukturze.</font>
"
]
];

player createDiaryRecord [
"Diary", [
"Zadania",
"
<font size='20'>Zadania</font>
<br />
<br />
<font size='16'>1. Mykołajiwka i Roztannya: Wróg zebrał dość duże siły w miejscowościach Mykołajiwka i Roztannya. Jest to ciężki punkt oporu do pokonania. Bardzo prawdopodobne, że wróg przyśle jeszcze posiłki, by bronić tego terenu i nie odda go za darmo.
<br />     - Natarcie: Zwiad donosi o potencjalnym ataku z strony Mykołajiwki i Roztannyi.
<br /><br />
2. Zelene Pole: Zelene Pole jest jedną z pierwszych miejscowości przy froncie, jej zajęcie pozwoli nam zabezpieczyć sobie zachodnią flankę przy atakach dalej na północ.
<br />     - Punkt zborny: Zwiad donosi, że niedaleko miejscowości Zelene Pole zauważono odziały specjalne wroga. Bardzo prawdopodobne, że szykują się do jakiejś operacji.
<br /><br />
3. Sofijiwka: Miejscowość Sofijiwka jest kolejnym punktem naszej kontry, według danych wywiadowczych nie stacjonuje tam wiele jednostek wroga. Jednak zaraz na północy rozlokowała się kompania wroga, która w każdym momencie może przyjść z odsieczą.
<br />     - Konwój: Przez miejscowość Sofijiwka wróg przerzuca zaopatrzenie na front. Może uda nam się złapać jeden z konwojów wroga z zaopatrzeniem i go zniszczyć.
<br /><br />
4. Umocniona pozycja: Wróg umocnił pozycję na wzgórzu, która daje mu przewagę nad okolicą. 
<br /><br />
5. Liubymivka: Miejscowość Liubymivka stanowi dla wroga punkt zaopatrzeniowy. Właśnie z tego punktu wróg pobiera wszelkie zasoby potrzebne mu do walki w tym regionie.
<br />     - Skład amunicji: Skład amunicji wroga jest dla nas bardzo ważnym punktem do przejęcia. Zniszczenie bądź przejęcie punktu pozbawi wroga części zapasów.
<br /><br />
6. Volodymyrivka: Miejscowość Volodymyrivka, kolejny punkty na mapie naszej ofensywy. Jej zajęcia nie powinno stanowić większego problemu, a pozwoli zamknąć wroga w punkcie bez wyjścia.
<br /><br />
7. Preobrazhenka: W Preobrazhence wróg umieścił radar artyleryjski, który jest broniony przez całą kompanie wroga. Jednak nie możemy odpuszczać i za wszelką cenę trzeba ten teren zająć.
<br />     - Radar artyleryjski: Wrogi radar artyleryjski zdradza pozycje naszej artylerii i utrudnia im działanie i wspieranie naszych.
<br /><br />
8. Bereznuvativka: W miejscowości Bereznuvativka wróg przygotowuje maszyny oraz sprzęt do wyjazdu do walki na front.
<br />     - Park maszyn: Wróg w parku maszyn przygotowuje tony sprzętu, by wysyłać je do nas na linie frontu. W miarę możliwość przydałoby się sprzęt przejąć, a nie niszczyć.
<br /><br />
9. Wsparcie ogniowe [OPCJONALNE]: Wróg w rejonie operacji rozmieścił dwie pozycje moździerzy. Ich likwidacja może być bardzo istotna dla powodzenia całej operacji.
<br />     - Pozycja moździerzy
<br />     - Pozycja moździerzy</font>
"
]
];

player createDiaryRecord [
"Diary", [
"Informaje",
"
<font size='20'>Informacje i zalecenia</font>
<br />
<br />
<font size='16'>- Zeus w trakcie misje będzie przejmował AI w celu prowadzenia wymiany ognia z graczami. (UWAGA: Zeus strzela ostrą amunicja)
<br />- Zadania zaliczają się automatycznie. W przypadku braku zaliczenia dowódca operacji może zdecydować o jego zaliczeniu.
<br />- Zaleca się zniszczenie wrogich pozycji artylerii.
<br />- Przezbrojenie dostarcza drużyna logistyczna, pobierając skrzynki z wyposażeniem z magazynu.
<br />- Ural (z paliwem) serwisowy posiada opcję przezbrojenia, tankowania i jest pojazdem naprawczym, który umożliwia pełną naprawę pojazdu.
<br />- Brak dodatkowych pojazdów.
<br />- Zniszczenie radaru artyleryjskiego wroga wyłączy system kontr artyleryjski.
<br />- Skrzynki z przezbrojeniem znajdują się przy drużynach.
<br />- Uwaga wróg posiada BARDZO zbliżone malowania pojazdów jak sojusznik.
<br />- Zasięg widzenia ograniczony do 2km. (ze względu na zasięg dynamicznej symulacji i spawn jednostek nie potrzebny większy)</font>
<br />- Dodatkowe skrzynie dla logistyki znajdują się obok budynku HQ</font>
<br />- Artylerzyści mają dostęp do Prostego Komputera Artyleryjskiego. (Przycisk P) - By Krzyciu</font>
"
]
];
