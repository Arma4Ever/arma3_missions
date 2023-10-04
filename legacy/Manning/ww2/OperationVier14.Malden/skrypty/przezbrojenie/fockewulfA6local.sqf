_calosc = 195;
_jednostka = 1;
_postep = 0;
_procentowyPostep = 0;

while{_postep < _calosc} do {hintSilent (str _postep + " z " + str _calosc); _procentowyPostep = _procentowyPostep + 1; _postep = _postep + _jednostka; sleep 1};
"Koniec przezbrojenia" hintC "Twoj Focke-Wulf A6 (Zbalansowane wyposazenie) jest gotowy!";