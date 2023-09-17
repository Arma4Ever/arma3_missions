/*
 * Deklaracja naszywek naramiennych
 * Dokumentacja: https://community.bistudio.com/wiki/Arma_3:_Unit_Insignia
 */

class CfgUnitInsignia {
    // Pamiętaj, że GVAR(twojaKlasa) rozwiazuje się do mission_twojaKlasa
    class 111thID {
        // Nazwa naszywki
     	displayName = "111th Infantry Division"; // Możesz też użyc CSTRING(CfgUnitInsignia_111thID);

        // Autor
     	author = "Bohemia Interactive";

        // Ścieżka do pliku graficznego. Plik musi być w formacie PAA, w rozmiarach 128x128px
     	texture = "\a3\UI_F_Bootcamp\Data\CfgUnitInsignia\B_111thID_texture_ca.paa";
    };

    class Kraken {
        // Nazwa naszywki
     	displayName = "Kraken Regiment [UKRAIN]"; // Możesz też użyc CSTRING(CfgUnitInsignia_111thID);

        // Autor
     	author = "Armed Forces of Ukrain";

        // Ścieżka do pliku graficznego. Plik musi być w formacie PAA, w rozmiarach 128x128px
     	texture = "data\Kraken_logo.paa";
    };
class Zmech {
        // Nazwa naszywki
      displayName = "92 Brygada Zmechanizowana"; // Możesz też użyc CSTRING(CfgUnitInsignia_111thID);

        // Autor
      author = "Armed Forces of Ukrain";

        // Ścieżka do pliku graficznego. Plik musi być w formacie PAA, w rozmiarach 128x128px
      texture = "data\UA_92.paa";
    };
class Des {
      // Nazwa naszywki
      displayName = "80 Brygada Powietrzno-Desantowa"; // Możesz też użyc CSTRING(CfgUnitInsignia_111thID);

      // Autor
      author = "Armed Forces of Ukrain";

      // Ścieżka do pliku graficznego. Plik musi być w formacie PAA, w rozmiarach 128x128px
      texture = "data\UA_80.paa";
      };
class GroundForce {
        // Nazwa naszywki
      displayName = "Siły naziemne ukrainy"; // Możesz też użyc CSTRING(CfgUnitInsignia_111thID);

      // Autor
    author = "Armed Forces of Ukrain";

    // Ścieżka do pliku graficznego. Plik musi być w formacie PAA, w rozmiarach 128x128px
    texture = "data\UA_Ground_Forces.paa";
                };
class Vol {
            // Nazwa naszywki
    displayName = "Ochotniczy Pułk"; // Możesz też użyc CSTRING(CfgUnitInsignia_111thID);

    // Autor
    author = "Armed Forces of Ukrain";

    // Ścieżka do pliku graficznego. Plik musi być w formacie PAA, w rozmiarach 128x128px
    texture = "data\UA_DUK.paa";
        };
};
