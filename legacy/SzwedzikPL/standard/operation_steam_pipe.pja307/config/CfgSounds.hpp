/*
 * Deklaracja dźwięków
 * Dokumentacja: https://community.bistudio.com/wiki/Description.ext#CfgSounds
 */

class CfgSounds {
    class GVAR(intro_music) {
        name = "A3C Mission Intro";
        sound[] = {"data\intro_music.ogg", 1, 1, 100};
        titles[] = {0, ""};
    };
    class GVAR(board_cut) {
        name = QGVAR(board_cut);
        sound[] = {"data\sounds\board_cut.ogg", 3, 1, 100};
        titles[] = {0, ""};
    };
    class GVAR(board_beep) {
        name = QGVAR(board_beep);
        sound[] = {"data\sounds\board_beep.ogg", 3, 1, 100};
        titles[] = {0, ""};
    };
    class GVAR(brooks_whine) {
        name = QGVAR(brooks_whine);
        sound[] = {"data\sounds\brooks_whine.ogg", 2, 1, 20};
        titles[] = {0, ""};
    };
    class GVAR(brooks_leave) {
        name = QGVAR(brooks_leave);
        sound[] = {"data\sounds\brooks_leave.ogg", 2, 1, 20};
        titles[] = {0, ""};
    };
};
