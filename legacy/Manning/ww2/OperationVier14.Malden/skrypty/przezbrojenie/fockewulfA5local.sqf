_calosc = 210;
_jednostka = 1;
_postep = 0;
_procentowyPostep = 0;

while{_postep < _calosc} do {hintSilent (str _postep + " z 210"); _procentowyPostep = _procentowyPostep + 1; _postep = _postep + _jednostka; sleep 1};
"Koniec przezbrojenia" hintC "Twoj Focke-Wulf A5(Lekkie Wsparcie Piechoty) jest gotowy!";