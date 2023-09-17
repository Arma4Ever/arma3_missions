class carrierBriefingSlidesDialog {
	idd = -1;
	access = 0;
	movingEnable = true;
	onLoad = "_this spawn mission_fnc_initBriefingSlidesDialog";
	onUnload = "";
	enableSimulation = true;
	class ControlsBackground {
        class RscPicture_1200: RscPicture {
        	idc = 1200;
        	text = "#(argb,8,8,3)color(0,0,0,0.85)";
            x = 0.29375 * safezoneW + safezoneX;
        	y = 0.346063 * safezoneH + safezoneY;
        	w = 0.4125 * safezoneW;
        	h = 0.175928 * safezoneH;
        };
	};
	class Controls {

        class RscStructuredText_1100: RscStructuredText
        {
        	idc = 1100;
        	text = "";
        	x = 0.29375 * safezoneW + safezoneX;
        	y = 0.346063 * safezoneH + safezoneY;
        	w = 0.4125 * safezoneW;
        	h = 0.0329865 * safezoneH;
        };
        class RscStructuredText_1102: RscStructuredText
        {
        	idc = 1102;
        	text = "Ekran 1";
        	x = 0.304062 * safezoneW + safezoneX;
        	y = 0.401041 * safezoneH + safezoneY;
        	w = 0.12375 * safezoneW;
        	h = 0.022 * safezoneH;
        };
        class RscButton_1600: RscButton
        {
        	idc = 1600;
        	text = "Zamknij";
            action = "closeDialog 0;"
        	x = 0.422656 * safezoneW + safezoneX;
        	y = 0.532986 * safezoneH + safezoneY;
        	w = 0.144375 * safezoneW;
        	h = 0.033 * safezoneH;
        };
        class RscStructuredText_1101: RscStructuredText
        {
        	idc = 1101;
        	text = "Ekran 2";
        	x = 0.438125 * safezoneW + safezoneX;
        	y = 0.401041 * safezoneH + safezoneY;
        	w = 0.12375 * safezoneW;
        	h = 0.022 * safezoneH;
        };
        class RscStructuredText_1103: RscStructuredText
        {
        	idc = 1103;
        	text = "Ekran 3";
        	x = 0.572187 * safezoneW + safezoneX;
        	y = 0.401041 * safezoneH + safezoneY;
        	w = 0.12375 * safezoneW;
        	h = 0.022 * safezoneH;
        };
        class RscButtonMenu_2400: RscButtonMenu
        {
        	idc = 2400;
        	text = "Zapisz";
        	x = 0.304062 * safezoneW + safezoneX;
        	y = 0.478009 * safezoneH + safezoneY;
        	w = 0.397031 * safezoneW;
        	h = 0.021991 * safezoneH;
        };
        class RscCombo_2100: RscCombo
        {
        	idc = 2100;
        	x = 0.304062 * safezoneW + safezoneX;
        	y = 0.434027 * safezoneH + safezoneY;
        	w = 0.12375 * safezoneW;
        	h = 0.022 * safezoneH;
        };
        class RscCombo_2101: RscCombo
        {
        	idc = 2101;
        	x = 0.438125 * safezoneW + safezoneX;
        	y = 0.434027 * safezoneH + safezoneY;
        	w = 0.12375 * safezoneW;
        	h = 0.022 * safezoneH;
        };
        class RscCombo_2102: RscCombo
        {
        	idc = 2102;
        	x = 0.572187 * safezoneW + safezoneX;
        	y = 0.434027 * safezoneH + safezoneY;
        	w = 0.12375 * safezoneW;
        	h = 0.022 * safezoneH;
        };
    };
	class Objects {};
};
