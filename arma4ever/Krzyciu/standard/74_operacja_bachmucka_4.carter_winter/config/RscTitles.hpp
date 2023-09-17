class RscTitles {

  class Default {
		idd = -1;
		fadein = 0;
		fadeout = 0;
		duration = 0;
	};

  class GVAR(logo) {
    idd = -1;
  	fadein = 0.001;
  	fadeout = 0.001;
  	duration = 99999;
      class controls {
          class RscPicture_1200: RscPicture {
          	idc = 1200;
          	text = "data\logoScreen.paa";
          	x = 0.37625 * safezoneW + safezoneX;
          	y = 0.269 * safezoneH + safezoneY;
          	w = 0.237187 * safezoneW;
          	h = 0.44 * safezoneH;
          };
      };
  };

	class GVAR(introSlideshow) {
    idd = -1;
  	fadein = 0.001;
  	fadeout = 0.001;
  	duration = 9999999;
    onload = "_this call Krzyc_fnc_introSlideshow";
      class controls {
          class RscPicture_1202: RscPicture {
          	idc = 1202;
            text = "data\slides\slide_1.jpg";
            x = "safezoneXAbs";
          	y = "safezoneY";
          	w = "safezoneWAbs";
          	h = "safezoneH";
              colortext[] = {0,0,0,0};
          };
          class RscPicture_1203: RscPicture {
              idc = 1203;
              text = "data\slides\slide_2.jpg";
              x = "safezoneXAbs";
              y = "safezoneY";
              w = "safezoneWAbs";
              h = "safezoneH";
              colortext[] = {0,0,0,0};
          };
          class RscPicture_1204: RscPicture {
              idc = 1204;
              text = "data\slides\slide_3.jpg";
              x = "safezoneXAbs";
              y = "safezoneY";
              w = "safezoneWAbs";
              h = "safezoneH";
              colortext[] = {0,0,0,0};
          };
          class RscPicture_1205: RscPicture {
              idc = 1205;
              text = "data\slides\slide_4.jpg";
              x = "safezoneXAbs";
              y = "safezoneY";
              w = "safezoneWAbs";
              h = "safezoneH";
              colortext[] = {0,0,0,0};
          };
          class RscPicture_1206: RscPicture {
              idc = 1206;
              text = "data\slides\slide_5.jpg";
              x = "safezoneXAbs";
              y = "safezoneY";
              w = "safezoneWAbs";
              h = "safezoneH";
              colortext[] = {0,0,0,0};
          };
          class RscPicture_1207: RscPicture {
              idc = 1207;
              text = "data\slides\slide_6.jpg";
              x = "safezoneXAbs";
              y = "safezoneY";
              w = "safezoneWAbs";
              h = "safezoneH";
              colortext[] = {0,0,0,0};
          };
          class RscPicture_1208: RscPicture {
              idc = 1208;
              text = "data\slides\slide_7.jpg";
              x = "safezoneXAbs";
              y = "safezoneY";
              w = "safezoneWAbs";
              h = "safezoneH";
              colortext[] = {0,0,0,0};
          };
          class RscPicture_1209: RscPicture {
              idc = 1209;
              text = "data\slides\slide_text_1.jpg";
              x = "safezoneXAbs";
              y = "safezoneY";
              w = "safezoneWAbs";
              h = "safezoneH";
              colortext[] = {0,0,0,0};
    	  };
          class RscPicture_1210: RscPicture {
              idc = 1210;
              text = "data\slides\slide_text_2.jpg";
              x = "safezoneXAbs";
              y = "safezoneY";
              w = "safezoneWAbs";
              h = "safezoneH";
              colortext[] = {0,0,0,0};
    	  };
          class RscPicture_1211: RscPicture {
              idc = 1211;
              text = "data\slides\slide_text_3.jpg";
              x = "safezoneXAbs";
              y = "safezoneY";
              w = "safezoneWAbs";
              h = "safezoneH";
              colortext[] = {0,0,0,0};
    	  };
      };
	 };
};
