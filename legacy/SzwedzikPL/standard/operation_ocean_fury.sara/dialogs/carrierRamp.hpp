class carrierRampDialog {
	idd = -1;
	access = 0;
	movingEnable = true;
	onLoad = "_this spawn mission_fnc_initRampDialog";
	onUnload = "mission_ramp_dialog = false;mission_ramp_dialog_rampId = -1;";
	enableSimulation = true;
	class ControlsBackground {
        class RscPicture_1200: RscPicture
        {
        	idc = 1200;
        	text = "#(argb,8,8,3)color(0,0,0,0.85)";
        	x = 0.365938 * safezoneW + safezoneX;
        	y = 0.357 * safezoneH + safezoneY;
        	w = 0.268125 * safezoneW;
        	h = 0.275 * safezoneH;
        };
	};
	class Controls {
        class RscStructuredText_1100: RscStructuredText
        {
        	idc = 1100;
        	text = "USS Freedom";
        	x = 0.371093 * safezoneW + safezoneX;
        	y = 0.357 * safezoneH + safezoneY;
        	w = 0.257813 * safezoneW;
        	h = 0.044 * safezoneH;
        };
        class RscStructuredText_1101: RscStructuredText
        {
        	idc = 1101;
        	text = "Status: ---";
        	x = 0.371093 * safezoneW + safezoneX;
        	y = 0.423 * safezoneH + safezoneY;
        	w = 0.257813 * safezoneW;
        	h = 0.048 * safezoneH;
        };
        class RscCombo_2100: RscCombo
        {
        	idc = 2100;
        	x = 0.371094 * safezoneW + safezoneX;
        	y = 0.566 * safezoneH + safezoneY;
        	w = 0.257813 * safezoneW;
        	h = 0.022 * safezoneH;
        };
        class RscStructuredText_1102: RscStructuredText
        {
        	idc = 1102;
        	text = "Wezwij pojazd z hangaru";
        	x = 0.371093 * safezoneW + safezoneX;
        	y = 0.533 * safezoneH + safezoneY;
        	w = 0.257813 * safezoneW;
        	h = 0.022 * safezoneH;
        };
        class RscButtonMenu_2400: RscButtonMenu
        {
        	idc = 2400;
        	text = "Schowaj pojazd";
        	x = 0.371094 * safezoneW + safezoneX;
        	y = 0.478 * safezoneH + safezoneY;
        	w = 0.257813 * safezoneW;
        	h = 0.022 * safezoneH;
        };
        class RscButton_1600: RscButton
        {
        	idc = 1600;
        	text = "Zamknij";
            action = "closeDialog 0;";
        	x = 0.427812 * safezoneW + safezoneX;
        	y = 0.643 * safezoneH + safezoneY;
        	w = 0.144375 * safezoneW;
        	h = 0.033 * safezoneH;
        };
        class RscButtonMenu_2401: RscButtonMenu
        {
        	idc = 2401;
        	text = "Wezwij pojazd";
        	x = 0.371094 * safezoneW + safezoneX;
        	y = 0.599 * safezoneH + safezoneY;
        	w = 0.257813 * safezoneW;
        	h = 0.022 * safezoneH;
        };
	};
	class Objects {};
};
