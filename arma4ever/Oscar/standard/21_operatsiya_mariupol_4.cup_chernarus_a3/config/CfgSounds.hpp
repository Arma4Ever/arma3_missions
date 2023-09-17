/*
 * Deklaracja dźwięków
 * Dokumentacja: https://community.bistudio.com/wiki/Description.ext#CfgSounds
 */

class CfgSounds {
    class GVAR(intro_music) {
        name = "intro_music";
        sound[] = {"data\intro_music.ogg", 4, 1, 100};
        // Napisy wyświetlane wraz z dźwiękiem
        titles[] = {};
    };
};
