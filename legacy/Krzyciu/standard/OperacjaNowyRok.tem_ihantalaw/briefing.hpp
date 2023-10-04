if(_player != player) exitWith {};

/***************************************
               Briefing
****************************************/
// NOTES: ADMINISTRATION
_adm = player createDiaryRecord ["diary", ["Techniczne","
<br/>
Sprzęt macie na sobie, ewentualne zapasy są w skrzyniach w pojazdach.<br/><br/>
Interakcje pod menu interakcji.<br/><br/>
Uzupełnianie amunicji w helikopterze za pomocą interakcji na warsztacie.<br/><br/>
Kajman może zabrać do 8 osób, możliwość zjazdu na linach.<br/><br/>
"]];

// NOTES: EXECUTION
_exe = player createDiaryRecord ["diary", ["Wykonanie","
<br/>
Zdesatnować się na plaży w wyznaczonym sektorze.<br/>
Zająć drogę do miejscowości, w której przetrzymywani są dziennikarze i odbić ich.<br/>
Przejąć wrogi sztab i rozbić pozostałości sił nieprzyjaciela
<br/><br/>
Uwaga! Przeciwnik dostał hojne wsparcie materiałowe od naszych wrogów. Posiada dobrze wyposażone i wyszkolone jednostki. Możliwe wsparcie lotnicze.
<br/>
"]];


// NOTES: SITUATION
_sit = player createDiaryRecord ["diary", ["Sytuacja","
<br/>
Po Kryzysie Jutlandzkim z 2025 we wschodnich prowincjach naszego kraju doszło do rewolty. Siły wspierane materiałowo przez Rosjan i Japonie przejęły dość znaczną część terenów.<br/>
Teraz przyszedł czas na przejęcie inicjatywy i odzyskanie utraconych terenów.<br/>
Rozpoczęta operacja antypartyzancka ma przywrócić ład i porządek na terenie prowincji.
<br/>
<br/>
"]];

_rad = player createDiaryRecord ["diary", ["Radia","
<br/>
<img width='250' image='data\radia.jpg' /><br />
<br/>
"]];
