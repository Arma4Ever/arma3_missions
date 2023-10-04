/*
 * Deklaracja dźwięków
 * Dokumentacja: https://community.bistudio.com/wiki/Description.ext#CfgSounds
 */

class CfgSounds {
    class GVAR(intro_music) {
        name = "intro_music";
        sound[] = {"data\vn_enemy_territory.ogg", 2, 1, 100};
        // Napisy wyświetlane wraz z dźwiękiem
        titles[] = {};
    };
    class GVAR(norton_radio_message) {
        name = "norton_radio_message";
        sound[] = {"data\norton_radio_message.ogg", 1, 1, 100};
        // Napisy wyświetlane wraz z dźwiękiem
        titles[] = {};
    };
};
