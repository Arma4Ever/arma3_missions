/*
 * Deklaracja naszywek naramiennych
 * Dokumentacja: https://community.bistudio.com/wiki/Arma_3:_Unit_Insignia
 */

class CfgUnitInsignia {
    // Pamiętaj, że GVAR(twojaKlasa) rozwiazuje się do mission_twojaKlasa
    class GVAR(logo_4) {
        // Nazwa naszywki
     	displayName = "Logo_4"; // Możesz też użyc CSTRING(CfgUnitInsignia_111thID);

        // Autor
     	author = "Krzyciu";

        // Ścieżka do pliku graficznego. Plik musi być w formacie PAA, w rozmiarach 128x128px
     	texture = "data\logo_4.paa";
    };
};
