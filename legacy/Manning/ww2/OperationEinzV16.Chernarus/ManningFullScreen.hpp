#define CT_STATIC 0
#define ST_LEFT	0
#define ST_RIGHT	1
#define ST_CENTER	2
#define ST_UP		3
#define ST_DOWN	4
#define ST_VCENTER	5

#define ST_SINGLE	0
#define ST_MULTI	16
#define ST_PICTURE	48
#define ST_FRAME	64

#define ST_HUD_BACKGROUND 128
#define ST_TILE_PICTURE 144
#define ST_WITH_RECT 160
#define ST_LINE	176

#define ST_SHADOW	256
#define ST_NO_RECT	512

#define FontM "Bitstream"
#define ST_LEFT      0
#define ST_RIGHT     1
#define ST_CENTER    2
#define CT_STATIC    0

class RscText_FullScreen
{
 access = 0;
 idc = -1;
 type = CT_STATIC;
 style = ST_PICTURE;
 colorBackground[] = {0,0,0,1};
 colorText[] = {1,1,1,1};
 font = "TahomaB";		
 sizeEx = 0;			
 lineSpacing = 0;
 text = "";
 fixedWidth = 0;
 shadow = 0;
 
};

 class monolithSea 
{
  idd=-1;
  movingEnable=0;
  duration= 3;
  fadein = 1;
  fadeout = 1;
  name="monolithSea";
  controlsBackground[] = {};
  controls[]={Bild};
  	class Bild : RscText_FullScreen

	{
		idc = 1200;
		text="obrazySnu\monolithSea.jpg";
		x = 0 * safezoneW + safezoneX";
		y = 0 * safezoneH + safezoneY;
		w = 1 * safezoneW;		
		h = 1 * safezoneH;		
		
	};
};

class monolithDarkAge 
{
  idd=-1;
  movingEnable=0;
  duration= 3;
  fadein = 1;
  fadeout = 1;
  name="monolithDarkAge";
  controlsBackground[] = {};
  controls[]={Bild};
  	class Bild : RscText_FullScreen

	{
		idc = 1200;
		text="obrazySnu\monolithDarkAge.jpg";
		x = 0 * safezoneW + safezoneX";
		y = 0 * safezoneH + safezoneY;
		w = 1 * safezoneW;		
		h = 1 * safezoneH;		
		
	};
};

class monolithSun 
{
  idd=-1;
  movingEnable=0;
  duration= 3;
  fadein = 1;
  fadeout = 1;
  name="monolithSun";
  controlsBackground[] = {};
  controls[]={Bild};
  	class Bild : RscText_FullScreen

	{
		idc = 1200;
		text="obrazySnu\monolithSun.jpg";
		x = 0 * safezoneW + safezoneX";
		y = 0 * safezoneH + safezoneY;
		w = 1 * safezoneW;		
		h = 1 * safezoneH;		
		
	};
};

class alien_1 
{
  idd=-1;
  movingEnable=0;
  duration= 3;
  fadein = 1;
  fadeout = 1;
  name="alien_1";
  controlsBackground[] = {};
  controls[]={Bild};
  	class Bild : RscText_FullScreen

	{
		idc = 1200;
		text="obrazySnu\alien_1.jpg";
		x = 0 * safezoneW + safezoneX";
		y = 0 * safezoneH + safezoneY;
		w = 1 * safezoneW;		
		h = 1 * safezoneH;		
		
	};
};

class alien_2 
{
  idd=-1;
  movingEnable=0;
  duration= 3;
  fadein = 1;
  fadeout = 1;
  name="alien_2";
  controlsBackground[] = {};
  controls[]={Bild};
  	class Bild : RscText_FullScreen

	{
		idc = 1200;
		text="obrazySnu\alien_2.jpg";
		x = 0 * safezoneW + safezoneX";
		y = 0 * safezoneH + safezoneY;
		w = 1 * safezoneW;		
		h = 1 * safezoneH;		
		
	};
};

class alien_3 
{
  idd=-1;
  movingEnable=0;
  duration= 3;
  fadein = 1;
  fadeout = 1;
  name="alien_3";
  controlsBackground[] = {};
  controls[]={Bild};
  	class Bild : RscText_FullScreen

	{
		idc = 1200;
		text="obrazySnu\alien_3.jpg";
		x = 0 * safezoneW + safezoneX";
		y = 0 * safezoneH + safezoneY;
		w = 1 * safezoneW;		
		h = 1 * safezoneH;		
		
	};
};

class alien_4 
{
  idd=-1;
  movingEnable=0;
  duration= 3;
  fadein = 1;
  fadeout = 1;
  name="alien_4";
  controlsBackground[] = {};
  controls[]={Bild};
  	class Bild : RscText_FullScreen

	{
		idc = 1200;
		text="obrazySnu\alien_4.jpg";
		x = 0 * safezoneW + safezoneX";
		y = 0 * safezoneH + safezoneY;
		w = 1 * safezoneW;		
		h = 1 * safezoneH;		
		
	};
};


class bloodChutes 
{
  idd=-1;
  movingEnable=0;
  duration= 10;
  fadein = 1;
  fadeout = 1;
  name="bloodChutes";
  controlsBackground[] = {};
  controls[]={Bild};
  	class Bild : RscText_FullScreen

	{
		idc = 1200;
		text="obrazySnu\bloodChutes.jpg";
		x = 0 * safezoneW + safezoneX";
		y = 0 * safezoneH + safezoneY;
		w = 1 * safezoneW;		
		h = 1 * safezoneH;		
		
	};
};

class earth_1 
{
  idd=-1;
  movingEnable=0;
  duration= 10;
  fadein = 1;
  fadeout = 1;
  name="earth_1";
  controlsBackground[] = {};
  controls[]={Bild};
  	class Bild : RscText_FullScreen

	{
		idc = 1200;
		text="obrazySnu\earth_1.jpg";
		x = 0 * safezoneW + safezoneX";
		y = 0 * safezoneH + safezoneY;
		w = 1 * safezoneW;		
		h = 1 * safezoneH;		
		
	};
};