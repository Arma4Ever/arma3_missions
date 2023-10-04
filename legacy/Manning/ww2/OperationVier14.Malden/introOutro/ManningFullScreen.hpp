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

 class nukedLondon 
{
  idd=-1;
  movingEnable=0;
  duration= 10;
  fadein = 3;
  fadeout = 2;
  name="nukedLondon";
  controlsBackground[] = {};
  controls[]={Bild};
  	class Bild : RscText_FullScreen

	{
		idc = 1200;
		text="introOutro\nukedLondon.jpg";
		x = 0 * safezoneW + safezoneX";
		y = 0 * safezoneH + safezoneY;
		w = 1 * safezoneW;		
		h = 1 * safezoneH;		
		
	};
};

class naziParis 
{
  idd=-1;
  movingEnable=0;
  duration= 9;
  fadein = 3;
  fadeout = 3;
  name="naziParis";
  controlsBackground[] = {};
  controls[]={Bild};
  	class Bild : RscText_FullScreen

	{
		idc = 1200;
		text="introOutro\naziParis.jpg";
		x = 0 * safezoneW + safezoneX";
		y = 0 * safezoneH + safezoneY;
		w = 1 * safezoneW;		
		h = 1 * safezoneH;		
		
	};
};

class reichstag 
{
  idd=-1;
  movingEnable=0;
  duration= 9;
  fadein = 3;
  fadeout = 3;
  name="reichstag";
  controlsBackground[] = {};
  controls[]={Bild};
  	class Bild : RscText_FullScreen

	{
		idc = 1200;
		text="introOutro\reichstag.jpg";
		x = 0 * safezoneW + safezoneX";
		y = 0 * safezoneH + safezoneY;
		w = 1 * safezoneW;		
		h = 1 * safezoneH;		
		
	};
};

class reichstag2 
{
  idd=-1;
  movingEnable=0;
  duration= 9;
  fadein = 3;
  fadeout = 3;
  name="reichstag2";
  controlsBackground[] = {};
  controls[]={Bild};
  	class Bild : RscText_FullScreen

	{
		idc = 1200;
		text="introOutro\reichstag2.jpg";
		x = 0 * safezoneW + safezoneX";
		y = 0 * safezoneH + safezoneY;
		w = 1 * safezoneW;		
		h = 1 * safezoneH;		
		
	};
};

class swastikaBerlin 
{
  idd=-1;
  movingEnable=0;
  duration= 9;
  fadein = 3;
  fadeout = 3;
  name="swastikaBerlin";
  controlsBackground[] = {};
  controls[]={Bild};
  	class Bild : RscText_FullScreen

	{
		idc = 1200;
		text="introOutro\swastikaBerlin.jpg";
		x = 0 * safezoneW + safezoneX";
		y = 0 * safezoneH + safezoneY;
		w = 1 * safezoneW;		
		h = 1 * safezoneH;		
		
	};
};
