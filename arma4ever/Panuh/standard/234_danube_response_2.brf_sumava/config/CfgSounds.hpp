/*
 * Deklaracja dźwięków
 * Dokumentacja: https://community.bistudio.com/wiki/Description.ext#CfgSounds
 */

class CfgSounds {
    // Pamiętaj, że GVAR(twojaKlasa) rozwiazuje się do mission_twojaKlasa
    class GVAR(intro_sound) {
        // Nazwa dźwięku, nazwa techniczna, niewidoczna dla graczy, wyświetlana w edytorze (np. w efektach triggerów)
        name = "A4E Mission Intro";

        // Ścieżka do pliku dźwiękowego, głośność, wysokość tonu, dystans z którego słychać dźwięk
        sound[] = {"data\intro.ogg", 2, 1, 100};

        // Napisy wyświetlane wraz z dźwiękiem
        titles[] = {};
    };

    class GVAR(syrena) {
        // Nazwa dźwięku, nazwa techniczna, niewidoczna dla graczy, wyświetlana w edytorze (np. w efektach triggerów)
        name = "syrena";

        // Ścieżka do pliku dźwiękowego, głośność, wysokość tonu, dystans z którego słychać dźwięk
        sound[] = {"data\syrena.ogg", 10, 1, 2500};

        // Napisy wyświetlane wraz z dźwiękiem
        titles[] = {""};
    };

    class GVAR(geiger) {
        // Nazwa dźwięku, nazwa techniczna, niewidoczna dla graczy, wyświetlana w edytorze (np. w efektach triggerów)
        name = "geiger";

        // Ścieżka do pliku dźwiękowego, głośność, wysokość tonu, dystans z którego słychać dźwięk
        sound[] = {"data\geiger.ogg", 10, 1, 100};

        // Napisy wyświetlane wraz z dźwiękiem
        titles[] = {""};
    };
    class GVAR(go) {
        // Nazwa dźwięku, nazwa techniczna, niewidoczna dla graczy, wyświetlana w edytorze (np. w efektach triggerów)
        name = "go";

        // Ścieżka do pliku dźwiękowego, głośność, wysokość tonu, dystans z którego słychać dźwięk
        sound[] = {"data\go.ogg", 10, 1, 100};

        // Napisy wyświetlane wraz z dźwiękiem
        titles[] = {""};
    };

    class GVAR(defense) {
        // Nazwa dźwięku, nazwa techniczna, niewidoczna dla graczy, wyświetlana w edytorze (np. w efektach triggerów)
        name = "defense";

        // Ścieżka do pliku dźwiękowego, głośność, wysokość tonu, dystans z którego słychać dźwięk
        sound[] = {"data\defense.ogg", 10, 1, 100};

        // Napisy wyświetlane wraz z dźwiękiem
        titles[] = {""};
    };
    class GVAR(inf3) {
        // Nazwa dźwięku, nazwa techniczna, niewidoczna dla graczy, wyświetlana w edytorze (np. w efektach triggerów)
        name = "inf3";

        // Ścieżka do pliku dźwiękowego, głośność, wysokość tonu, dystans z którego słychać dźwięk
        sound[] = {"data\inf3.ogg", 10, 1, 100};

        // Napisy wyświetlane wraz z dźwiękiem
        titles[] = {""};
    };
};
