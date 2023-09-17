import RscControlsGroupNoScrollbars;
import RscBackgroundGUITop;
import RscBackgroundGUI;
import ctrlEdit;

#define X_OFFSET 0.2

#define FONT_STANDARD      "PuristaMedium"

#define SIZEX (((safezoneW / safezoneH) min 1.2))
#define SIZEY (SIZEX / 1.2)
#define X_ORIGINAL(num) (num * (SIZEX / 40) + (safezoneX + (safezoneW - SIZEX)/2))
#define Y_ORIGINAL(num) (num * (SIZEY / 25) + (safezoneY + (safezoneH - (SIZEX / 1.2))/2))
#define W_ORIGINAL(num) (num * (SIZEX / 40))
#define H_ORIGINAL(num) (num * (SIZEY / 25))

#define X_LISTBOX_OFFSET (X_ORIGINAL(11))
#define Y_LISTBOX_OFFSET (Y_ORIGINAL(0))

#define X_EDITBOX_OFFSET (X_ORIGINAL(11))
#define Y_EDITBOX_OFFSET (Y_ORIGINAL(6))

class mission_ui_backgroundBase {
    type = CT_STATIC;
    idc = -1;
    style = ST_PICTURE;
    colorBackground[] = {0,0,0,0};
    colorText[] = {1,1,1,1};
    font = FONT_STANDARD;
    text = "";
    sizeEx = 0.032;
};
class mission_ui_staticBase {
    idc = -1;
    type = CT_STATIC;
    x = 0.0;
    y = 0.0;
    w = 0.183825;
    h = 0.104575;
    style = ST_LEFT;
    font = FONT_STANDARD;
    sizeEx = 0.03921;
    colorText[] = {0.95, 0.95, 0.95, 1.0};
    colorBackground[] = {0, 0, 0, 0};
    text = "";
};
class mission_ui_buttonBase {
    idc = -1;
    type = CT_SHORTCUTBUTTON;
    style = ST_LEFT;
    text = "";
    action = "";
    x = 0.0;
    y = 0.0;
    w = 0.25;
    h = 0.04;
    size = 0.03921;
    sizeEx = 0.03921;
    color[] = {1.0, 1.0, 1.0, 1};
    color2[] = {1.0, 1.0, 1.0, 1};
    colorBackground[] = {1,1,1,0.95};
    colorbackground2[] = {1,1,1,0.95};
    colorDisabled[] = {1,1,1,0.6};
    colorFocused[] = {1,1,1,1};
    colorBackgroundFocused[] = {1,1,1,1};
    periodFocus = 1.2;
    periodOver = 0.8;
    default = false;
    class HitZone {
        left = 0.00;
        top = 0.00;
        right = 0.00;
        bottom = 0.00;
    };
    class ShortcutPos {
        left = 0.00;
        top = 0.00;
        w = 0.00;
        h = 0.00;
    };
    class TextPos {
        left = 0.002;
        top = 0.0004;
        right = 0.0;
        bottom = 0.00;
    };
    textureNoShortcut = "";
    animTextureNormal = "#(argb,8,8,3)color(0,0,0,0.9)";
    animTextureDisabled = "#(argb,8,8,3)color(0,0,0,0.8)";
    animTextureOver = "#(argb,8,8,3)color(1,1,1,1)";
    animTextureFocused = "#(argb,8,8,3)color(1,1,1,1)";
    animTexturePressed = "#(argb,8,8,3)color(1,1,1,1)";
    animTextureDefault = "#(argb,8,8,3)color(1,1,1,1)";
    period = 0.5;
    font = FONT_STANDARD;
    soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1};
    soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.0,0};
    soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.07,1};
    soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1};
    class Attributes {
        font = FONT_STANDARD;
        color = "#E5E5E5";
        align = "center";
        shadow = "true";
    };
    class AttributesImage {
        font = FONT_STANDARD;
        color = "#E5E5E5";
        align = "left";
        shadow = "true";
    };
};
class mission_ui_editBox {
    idd = -1;
    movingEnable = 0;
    onLoad = QUOTE(uiNamespace setVariable [ARR_2('mission_ui_editBox', _this select 0)];);
    onUnload = QUOTE(uiNamespace setVariable [ARR_2('mission_ui_editBox', nil)];);
    class controlsBackground {
        class HeaderBackground: mission_ui_backgroundBase {
            idc = 8849;
            type = CT_STATIC;
            style = ST_LEFT + ST_SHADOW;
            x = X_ORIGINAL(0) + X_EDITBOX_OFFSET;
            y = Y_ORIGINAL(1) + Y_EDITBOX_OFFSET;
            w = W_ORIGINAL(24);
            h = H_ORIGINAL(1);
            SizeEx = H_ORIGINAL(1);
            colorText[] = {0.95, 0.95, 0.95, 0.75};
            colorBackground[] = {
                "(profilenamespace getVariable ['GUI_BCG_RGB_R',0.69])",
                "(profilenamespace getVariable ['GUI_BCG_RGB_G',0.75])",
                "(profilenamespace getVariable ['GUI_BCG_RGB_B',0.5])",
                "(profilenamespace getVariable ['GUI_BCG_RGB_A',0.9])"
            };
            text = "";
        };
        class BodyBackgroud: mission_ui_backgroundBase {
            idc = -1;
            type = CT_STATIC;
            style = ST_LEFT + ST_SHADOW;
            x = X_ORIGINAL(0) + X_EDITBOX_OFFSET;
            y = Y_ORIGINAL(2) + Y_EDITBOX_OFFSET;
            w = W_ORIGINAL(24);
            h = H_ORIGINAL(5);
            SizeEx = H_ORIGINAL(1);
            colorText[] = {0.95, 0.95, 0.95, 0.75};
            colorBackground[] = {0, 0, 0, 0.8};
            text = "";
        };
    };
    class controls {
        class HeaderName {
            idc = 8850;
            type = CT_STATIC;
            x = X_ORIGINAL(0) + X_EDITBOX_OFFSET;
            y = Y_ORIGINAL(1) + Y_EDITBOX_OFFSET;
            w = W_ORIGINAL(24);
            h = H_ORIGINAL(1);
            style = ST_LEFT + ST_SHADOW;
            font = FONT_STANDARD;
            SizeEx = H_PART(1);
            colorText[] = {0.95, 0.95, 0.95, 0.75};
            colorBackground[] = {0,0,0,0};
            text = "";
        };
        class TextInputLabel: mission_ui_staticBase {
            idc = 8851;
            x = X_ORIGINAL(0.5) + X_EDITBOX_OFFSET;
            y = Y_ORIGINAL(3) + Y_EDITBOX_OFFSET;
            w = W_ORIGINAL(6.5);
            h = H_ORIGINAL(1);
            text = "aaa";
        };
        class TextInput: ctrlEdit {
            idc = 8852;
            x = X_ORIGINAL(7) + X_EDITBOX_OFFSET;
            y = Y_ORIGINAL(3.1) + Y_EDITBOX_OFFSET;
            w = W_ORIGINAL(16.5);
            h = H_ORIGINAL(1);
        };
        class TextInputLabel2: mission_ui_staticBase {
            idc = 8853;
            x = X_ORIGINAL(7) + X_EDITBOX_OFFSET;
            y = Y_ORIGINAL(4) + Y_EDITBOX_OFFSET;
            w = W_ORIGINAL(16.5);
            h = H_ORIGINAL(1);
            text = "bbb";
        };

        class ButtonOne: mission_ui_buttonBase {
            idc = 8854;
            x = X_ORIGINAL(0) + X_EDITBOX_OFFSET;
            y = Y_ORIGINAL(6) + Y_EDITBOX_OFFSET;
            w = W_ORIGINAL(8);
            h = H_ORIGINAL(1);
            animTextureNormal = "#(argb,8,8,3)color(0,0,0,0.8)";
            animTextureDisabled = "#(argb,8,8,3)color(0,0,0,0.5)";
            animTextureOver = "#(argb,8,8,3)color(1,1,1,1)";
            animTextureFocused = "#(argb,8,8,3)color(1,1,1,1)";
            animTexturePressed = "#(argb,8,8,3)color(1,1,1,1)";
            animTextureDefault = "#(argb,8,8,3)color(1,1,1,1)";
            color[] = {1, 1, 1, 1};
            color2[] = {0,0,0, 1};
            colorBackgroundFocused[] = {1,1,1,1};
            colorBackground[] = {1,1,1,1};
            colorbackground2[] = {1,1,1,1};
            colorDisabled[] = {0.5,0.5,0.5,0.8};
            colorFocused[] = {0,0,0,1};
            periodFocus = 1;
            periodOver = 1;
            text = "Zamknij";
            action = "closeDialog 0";
        };
        /*
        class ButtonTwo: ButtonOne {
            idc = 8855;
            x = X_ORIGINAL(8) + X_EDITBOX_OFFSET;
            y = Y_ORIGINAL(6) + Y_EDITBOX_OFFSET;
            w = W_ORIGINAL(8);
            h = H_ORIGINAL(1);
            text = "";
            action = "";
        };
        */
        class ButtonThree: ButtonOne {
            idc = 8856;
            x = X_ORIGINAL(16) + X_EDITBOX_OFFSET;
            y = Y_ORIGINAL(6) + Y_EDITBOX_OFFSET;
            w = W_ORIGINAL(8);
            h = H_ORIGINAL(1);
            text = "";
            action = "";
        };
    };
};

import zen_modules_RscGlobalHint;
class GVAR(zeusHQHint): zen_modules_RscGlobalHint {
    onLoad = "_this call mission_fnc_zeusHQHint";
};
