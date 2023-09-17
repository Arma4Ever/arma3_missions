/*
 * Deklaracja dźwięków
 * Dokumentacja: https://community.bistudio.com/wiki/Description.ext#CfgSounds
 */

class CfgSounds {
    // Pamiętaj, że GVAR(twojaKlasa) rozwiazuje się do mission_twojaKlasa
    class GVAR(intro_music) {
        name = "";
        sound[] = {"data\music.ogg", 2, 1, 100};
        titles[] = {};
    };
};
