class RscTitles {
	class Default {
		idd = -1;
		fadein = 0;
		fadeout = 0;
		duration = 0;
	};
    class GVAR(introSlideshow) {
        idd = -1;
        fadein = 0.001;
		fadeout = 0.001;
		duration = 99999999;
        onload = "_this call mission_fnc_introSlideshow";
        class controls {
            class RscPicture_1201: RscPicture {
            	idc = 1201;
                text = "data\intro\slide_1.jpg";
                x = "safezoneXAbs";
            	y = "safezoneY";
            	w = "safezoneWAbs";
            	h = "safezoneH";
                colortext[] = {0,0,0,0};
            };
            class RscPicture_1202: RscPicture {
            	idc = 1202;
                text = "data\intro\slide_2.jpg";
                x = "safezoneXAbs";
            	y = "safezoneY";
            	w = "safezoneWAbs";
            	h = "safezoneH";
                colortext[] = {0,0,0,0};
            };
            class RscPicture_1203: RscPicture {
                idc = 1203;
                text = "data\intro\slide_3.jpg";
                x = "safezoneXAbs";
                y = "safezoneY";
                w = "safezoneWAbs";
                h = "safezoneH";
                colortext[] = {0,0,0,0};
            };
        };
    };
};
