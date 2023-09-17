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

    class GVAR(clock) {
        // Nazwa dźwięku, nazwa techniczna, niewidoczna dla graczy, wyświetlana w edytorze (np. w efektach triggerów)
        name = "";

        // Ścieżka do pliku dźwiękowego, głośność, wysokość tonu, dystans z którego słychać dźwięk
        sound[] = {"data\clock.ogg", 2, 1, 100};

        // Napisy wyświetlane wraz z dźwiękiem
        titles[] = {};
    };

    class GVAR(jump) {
        // Nazwa dźwięku, nazwa techniczna, niewidoczna dla graczy, wyświetlana w edytorze (np. w efektach triggerów)
        name = "";

        // Ścieżka do pliku dźwiękowego, głośność, wysokość tonu, dystans z którego słychać dźwięk
        sound[] = {"data\jump.ogg", 2, 1, 100};

        // Napisy wyświetlane wraz z dźwiękiem
        titles[] = {};
    };
};
