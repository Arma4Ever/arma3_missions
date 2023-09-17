class carrierSoundsDialog {
	idd = -1;
	access = 0;
	movingEnable = true;
	onLoad = "_this spawn mission_fnc_initSoundsDialog";
	onUnload = "";
	enableSimulation = true;
	class ControlsBackground {
        class RscPicture_1200: RscPicture
        {
        	idc = 1200;
        	text = "#(argb,8,8,3)color(0,0,0,0.85)";
        	x = 0.29375 * safezoneW + safezoneX;
        	y = 0.324 * safezoneH + safezoneY;
        	w = 0.4125 * safezoneW;
        	h = 0.264 * safezoneH;
        };
	};
	class Controls {
        class RscStructuredText_1100: RscStructuredText
        {
        	idc = 1100;
        	text = "";
        	x = 0.29375 * safezoneW + safezoneX;
        	y = 0.324 * safezoneH + safezoneY;
        	w = 0.4125 * safezoneW;
        	h = 0.044 * safezoneH;
        };
        class RscCombo_2100: RscCombo
        {
        	idc = 2100;
        	x = 0.298906 * safezoneW + safezoneX;
        	y = 0.522 * safezoneH + safezoneY;
        	w = 0.12375 * safezoneW;
        	h = 0.022 * safezoneH;
        };
        class RscStructuredText_1102: RscStructuredText
        {
        	idc = 1102;
        	text = "Wezwij do pokoju odpraw...";
        	x = 0.298906 * safezoneW + safezoneX;
        	y = 0.489 * safezoneH + safezoneY;
        	w = 0.12375 * safezoneW;
        	h = 0.022 * safezoneH;
        };
        class RscButton_1600: RscButton
        {
        	idc = 1600;
        	text = "Zamknij";
            action = "closeDialog 0;"
        	x = 0.422656 * safezoneW + safezoneX;
        	y = 0.599 * safezoneH + safezoneY;
        	w = 0.144375 * safezoneW;
        	h = 0.033 * safezoneH;
        };
        class RscButtonMenu_2401: RscButtonMenu
        {
        	idc = 2401;
        	text = "Wezwij";
        	x = 0.298906 * safezoneW + safezoneX;
        	y = 0.555 * safezoneH + safezoneY;
        	w = 0.12375 * safezoneW;
        	h = 0.022 * safezoneH;
        };
        class RscStructuredText_1101: RscStructuredText
        {
        	idc = 1101;
        	text = "$STR_Mission_Dialog_SoundPanel_CallOnDeck";
        	x = 0.438125 * safezoneW + safezoneX;
        	y = 0.489 * safezoneH + safezoneY;
        	w = 0.12375 * safezoneW;
        	h = 0.022 * safezoneH;
        };
        class RscStructuredText_1103: RscStructuredText
        {
        	idc = 1103;
        	text = "Wezwij do maszyny...";
        	x = 0.577344 * safezoneW + safezoneX;
        	y = 0.489 * safezoneH + safezoneY;
        	w = 0.12375 * safezoneW;
        	h = 0.022 * safezoneH;
        };
        class RscCombo_2101: RscCombo
        {
        	idc = 2101;
        	x = 0.438125 * safezoneW + safezoneX;
        	y = 0.522 * safezoneH + safezoneY;
        	w = 0.12375 * safezoneW;
        	h = 0.022 * safezoneH;
        };
        class RscCombo_2102: RscCombo
        {
        	idc = 2102;
        	x = 0.577344 * safezoneW + safezoneX;
        	y = 0.522 * safezoneH + safezoneY;
        	w = 0.12375 * safezoneW;
        	h = 0.022 * safezoneH;
        };
        class RscButtonMenu_2400: RscButtonMenu
        {
        	idc = 2400;
        	text = "Wezwij";
        	x = 0.438125 * safezoneW + safezoneX;
        	y = 0.555 * safezoneH + safezoneY;
        	w = 0.12375 * safezoneW;
        	h = 0.022 * safezoneH;
        };
        class RscButtonMenu_2402: RscButtonMenu
        {
        	idc = 2402;
        	text = "Wezwij";
        	x = 0.577344 * safezoneW + safezoneX;
        	y = 0.555 * safezoneH + safezoneY;
        	w = 0.12375 * safezoneW;
        	h = 0.022 * safezoneH;
        };
        class RscButtonMenu_2403: RscButtonMenu
        {
        	idc = 2403;
        	text = "Deck emergency";
        	x = 0.298906 * safezoneW + safezoneX;
        	y = 0.379 * safezoneH + safezoneY;
        	w = 0.12375 * safezoneW;
        	h = 0.033 * safezoneH;
        	colorText[] = {0.9,0.1,0.1,1};
        	colorBackground[] = {0.2,0,0,1};
        };
        class RscButtonMenu_2404: RscButtonMenu
        {
        	idc = 2404;
        	text = "Clear deck";
        	x = 0.438125 * safezoneW + safezoneX;
        	y = 0.379 * safezoneH + safezoneY;
        	w = 0.12375 * safezoneW;
        	h = 0.033 * safezoneH;
        	colorText[] = {0.9,0.9,0.1,1};
        	colorBackground[] = {0.2,0.2,0,1};
        };
        class RscButtonMenu_2405: RscButtonMenu
        {
        	idc = 2405;
        	text = "Drill: air defence";
        	x = 0.572187 * safezoneW + safezoneX;
        	y = 0.423 * safezoneH + safezoneY;
        	w = 0.12375 * safezoneW;
        	h = 0.033 * safezoneH;
        	colorText[] = {0.9,0.9,0.9,1};
        	colorBackground[] = {0.2,0.2,0.2,1};
        };
        class RscButtonMenu_2406: RscButtonMenu
        {
        	idc = 2406;
        	text = "Drill: Deck emergency";
        	x = 0.298906 * safezoneW + safezoneX;
        	y = 0.423 * safezoneH + safezoneY;
        	w = 0.12375 * safezoneW;
        	h = 0.033 * safezoneH;
        	colorText[] = {0.9,0.9,0.9,1};
        	colorBackground[] = {0.2,0.2,0.2,1};
        };
        class RscButtonMenu_2407: RscButtonMenu
        {
        	idc = 2407;
        	text = "Drill: Clear deck";
        	x = 0.438125 * safezoneW + safezoneX;
        	y = 0.423 * safezoneH + safezoneY;
        	w = 0.12375 * safezoneW;
        	h = 0.033 * safezoneH;
        	colorText[] = {0.9,0.9,0.9,1};
        	colorBackground[] = {0.2,0.2,0.2,1};
        };
	};
	class Objects {};
};
