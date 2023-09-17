#define CT_STATIC	0
#define CT_BUTTON	1
#define CT_EDIT	2
#define CT_SLIDER	3
#define CT_COMBO	4
#define CT_LISTBOX	5
#define CT_TOOLBOX	6
#define CT_CHECKBOXES	7
#define CT_PROGRESS	8
#define CT_HTML	9
#define CT_STATIC_SKEW	10
#define CT_ACTIVETEXT	11
#define CT_TREE	12
#define CT_STRUCTURED_TEXT	13
#define CT_CONTEXT_MENU	14
#define CT_CONTROLS_GROUP	15
#define CT_XKEYDESC	40
#define CT_XBUTTON	41
#define CT_XLISTBOX	42
#define CT_XSLIDER	43
#define CT_XCOMBO	44
#define CT_ANIMATED_TEXTURE	45
#define CT_OBJECT	80
#define CT_OBJECT_ZOOM	81
#define CT_OBJECT_CONTAINER	82
#define CT_OBJECT_CONT_ANIM	83
#define CT_LINEBREAK	98
#define CT_USER	99
#define CT_MAP	100
#define CT_MAP_MAIN	101
#define ST_POS	0x0F
#define ST_HPOS	0x03
#define ST_VPOS	0x0C
#define ST_LEFT	0x00
#define ST_RIGHT	0x01
#define ST_CENTER	0x02
#define ST_DOWN	0x04
#define ST_UP	0x08
#define ST_VCENTER	0x0c
#define ST_TYPE	0xF0
#define ST_SINGLE	0
#define ST_MULTI	16
#define ST_TITLE_BAR	32
#define ST_PICTURE	48
#define ST_FRAME	64
#define ST_BACKGROUND	80
#define ST_GROUP_BOX	96
#define ST_GROUP_BOX2	112
#define ST_HUD_BACKGROUND	128
#define ST_TILE_PICTURE	144
#define ST_WITH_RECT	160
#define ST_LINE	176
#define ST_SHADOW	0x100
#define ST_NO_RECT	0x200
#define ST_KEEP_ASPECT_RATIO	0x800
#define ST_TITLE	ST_TITLE_BAR + ST_CENTER
#define SL_DIR	0x400
#define SL_VERT	0
#define SL_HORZ	0x400
#define SL_TEXTURES	0x10
#define LB_TEXTURES	0x10
#define LB_MULTI	0x20
#define FontM	"TahomaB"
#define FontHTML	"TahomaB"

#define Krzyc_FONT			"PuristaBold"
#define Krzyc_FONTSIZE		0.03
#define Krzyc_OFFSET		0.011
#define Krzyc_ELEMENT_X		0.0705
#define Krzyc_ELEMENT_Y		0.0305
#define Krzyc_ELEMENT_W		0.13
#define Krzyc_ELEMENT_H		0.05

class GVAR(GUI_List): RscListBox {
  type = CT_LISTBOX;
  style = ST_MULTI;
  font = Krzyc_FONT;
  sizeEx = Krzyc_FONTSIZE;
  color[] = {1, 1, 1, 1};
  colorText[] = {0.543, 0.5742, 0.4102, 1};
  colorScrollbar[] = {0.95, 0.95, 0.95, 1};
  colorSelect[] = {0.95, 0.95, 0.95, 1};
  colorSelect2[] = {0.95, 0.95, 0.95, 1};
  colorSelectBackground[] = {0, 0, 0, 1};
  colorSelectBackground2[] = {0.543, 0.5742, 0.4102, 1.0};
  colorDisabled[] = {"(profilenamespace getVariable ['GUI_BCG_RGB_R',0.69])","(profilenamespace getVariable ['GUI_BCG_RGB_G',0.75])","(profilenamespace getVariable ['GUI_BCG_RGB_B',0.5])", 0.25};
  period = 1.2;
  rowHeight = 0.03;
  colorBackground[] = {0, 0, 0, 0.5};
  maxHistoryDelay = 1.0;
  autoScrollSpeed = -1;
  autoScrollDelay = 5;
  autoScrollRewind = 0;
  soundSelect[] = {"",0.1,1};
  soundExpand[] = {"",0.1,1};
  soundCollapse[] = {"",0.1,1};

  class ListScrollBar {
    arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
    arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
    autoScrollDelay = 5;
    autoScrollEnabled = 0;
    autoScrollRewind = 0;
    autoScrollSpeed = -1;
    border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
    color[] = {1,1,1,0.6};
    colorActive[] = {1,1,1,1};
    colorDisabled[] = {1,1,1,0.3};
    height = 0;
    scrollSpeed = 0.06;
    shadow = 0;
    thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
    width = 0;
  };
  class ScrollBar {
    color[] = {1, 1, 1, 0.6};
    colorActive[] = {1, 1, 1, 1};
    colorDisabled[] = {1, 1, 1, 0.3};
    thumb = "";
    arrowFull = "";
    arrowEmpty = "";
    border = "";
  };
};

class GVAR(GUI_Text) {
	idc = -1;
	type = 0;
	style = 0;
	
	x = 0;
	y = 0;
	w = 0.1;
	h = 0.1;
	
	font = Krzyc_FONT;
	SizeEx = Krzyc_FONTSIZE;
	shadow = 1;
	text = "";
	
	colorShadow[] = {0, 0, 0, 0.5};
	colorText[] = {0.543, 0.5742, 0.4102, 1.0};
	colorBackground[] = {0, 0, 0, 0};
	
	tooltip = "";
	tooltipColorText[] = {0.543, 0.5742, 0.4102, 1.0};
	tooltipColorBox[] = {1,1,1,1};
	tooltipColorShade[] = {0,0,0,0.65};
};

class GVAR(GUI_TextBox) {
	idc = -1;
	type = 2;
	style = 0;
	maxChars = 5;
	
	x = 0;
	y = 0;
	w = 0.1;
	h = 0.1;
	
	font = Krzyc_FONT;
	size = Krzyc_FONTSIZE;
	SizeEx = Krzyc_FONTSIZE;
	shadow = 0;
	text = "";
	autocomplete = "";
	canModify = 1;
	
	colorDisabled[] = {1,1,1,0.25};
	colorBackground[] = {0,0,0,0.5};
	colorText[] = {0.543, 0.5742, 0.4102, 1.0};
	colorSelection[] = {1,1,1,0.25};
};

class GVAR(GUI_Button1) {
	idc = -1;
	type = 1;
	style = 2;
	
	x = 0;
	y = 0;
	w = Krzyc_ELEMENT_W;
	h = (Krzyc_ELEMENT_H * 0.69);
	
	font = Krzyc_FONT;
	Size = Krzyc_FONTSIZE;
	sizeEx =  Krzyc_FONTSIZE;
	shadow = 0;
	text = "";
	default = 0;
	
	offsetX = 0;
	offsetY = 0;
	offsetPressedX = 0.001;
	offsetPressedY = 0.001;
	
	borderSize = 0;
	
	soundEnter[] = {"",0.1,1};
	soundPush[] = {"",0.1,1};
	soundClick[] = {"",0.1,1};
	soundEscape[] = {"",0.1,1};
	
	colorText[] = {0.543, 0.5742, 0.4102, 1.0};
	colorDisabled[] = {0,0,0,0};
	colorBackground[] = {0,0,0,0.5};
	colorBackgroundActive[] = {0,0,0,0};
	colorFocused[] = {0,0,0,0};
	colorShadow[] = {0,0,0,0};
	colorBorder[] = {0,0,0,0};
	colorBackgroundDisabled[] = {0,0,0,0};
};

class GVAR(GUI_Button2) {
	idc = -1;
	type = 16;
	style = 2;
	
	x = 0;
	y = 0;
	w = Krzyc_ELEMENT_W;
	h = (Krzyc_ELEMENT_H * 0.69);
	
	font = Krzyc_FONT;
	Size = Krzyc_FONTSIZE;
	SizeEx = Krzyc_FONTSIZE;
	shadow = 0;
	text = "";
	default = 0;
	
	period = 1;
	periodFocus = 1;
	periodOver = 1;
	
	soundEnter[] = {"",0.0,1};
	soundPush[] = {"",0.0,0};
	soundClick[] = {"",0.0,1};
	soundEscape[] = {"",0.0,1};
	
	animTextureNormal = "#(argb,8,8,3)color(0,0,0,0.75)";
	animTextureDisabled = "#(argb,8,8,3)color(0,0,0,0.75)";
	animTextureOver = "#(argb,8,8,3)color(0,0,0,0.75)";
	animTextureFocused = "#(argb,8,8,3)color(0,0,0,0.75)";
	animTexturePressed = "#(argb,8,8,3)color(0.2,0.2,0.2,0.9)";
	animTextureDefault = "#(argb,8,8,3)color(0,0,0,0.75)";
	textureNoShortcut = "#(argb,8,8,3)color(0,0,0,0.75)";
	
	color[] = {1,1,1,1};
	color2[] = {1,1,1,1};
	colorText[] = {0.543, 0.5742, 0.4102, 1};
	colorFocused[] = {0.543, 0.5742, 0.4102, 1.0};
	colorDisabled[] = {0.543, 0.5742, 0.4102, 1};
	colorBackground[] = {1,1,1,0.5};
	colorBackground2[] = {1,1,1,1};
	colorBackgroundFocused[] = {0,0,0,1};
	tooltipColorText[] = {0.543, 0.5742, 0.4102, 1};
	tooltipColorBox[] = {1,1,1,1};
	
	class Attributes
	{
		font = Krzyc_FONT;
		color = "#000000";
		align = "center";
		shadow = 0;
	};

	class TextPos {
		left = 0;
		top = 0;
		right = 0;
		bottom = 0;
	};
	
	class ShortcutPos {
		left = 0;
		top = 0;
		w = 0;
		h = 0;
	};
	
	class HitZone {
		left = 0;
		top = 0;
		right = 0;
		bottom = 0;
	};
};

class GVAR(GUI_Background) {
	idc = -1;
	type = 82;
	
	x = 0.5;
	y = 0.5;
	z = 0.2;

	xBack = 0.5;
	yBack = 0.5;
	zBack = 0.2;
	inBack = 0;

	scale = 1;
	direction[] = {0,-1,0};
	up[] = {0,1,-1};
	
	enableZoom = 0;
	zoomDuration = 0.001;
	model = "\A3\Props_F_Exp_A\Military\Equipment\Tablet_02_F.p3d";
	onLoad = "(_this select 0) ctrlEnable false";
};

class GVAR(GUI_ButtonClose): GVAR(GUI_Button2) {	
	x = 0.475;
	y = 1.11;
	w = 0.042;
	h = 0.040;
	
	text = "";
	
	animTextureNormal = "#(argb,8,8,3)color(0,0,0,1)";
	animTextureDisabled = "#(argb,8,8,3)color(0,0,0,0)";
	animTextureOver = "#(argb,8,8,3)color(0,0,0,0)";
	animTextureFocused = "#(argb,8,8,3)color(0,0,0,0)";
	animTexturePressed = "#(argb,8,8,3)color(0,0,0,0)";
	animTextureDefault = "#(argb,8,8,3)color(0,0,0,0)";
	textureNoShortcut = "#(argb,8,8,3)color(0,0,0,0)";
	
	tooltip = "Zamyka panel";
	tooltipColorText[] = {0.543, 0.5742, 0.4102, 1.0};
	tooltipColorBox[] = {1,1,1,0};
	tooltipColorShade[] = {0,0,0,0};
	
	onButtonClick = "(findDisplay 47500) closeDisplay 0;";
};

class GVAR(GUI_TargetMenu) {
	idd = 47500;
	name= QGVAR(GUI_TargetMenu);

	enableSimulation = 1;
	movingEnable = 0;

	onLoad = "0 spawn Krzyc_fnc_restoreDisplay";
	onUnload = "call Krzyc_fnc_saveDisplay";
	
	
	class Objects
	{
		class GVAR(GUI_Background2): GVAR(GUI_Background){};
	};
	
	class controls
	{
		class Background: GVAR(GUI_Text) {
			idc = -1;
			
			x = 0;
			y = 0;
			w = 1;
			h = 1;
			
			colorBackground[] = {0.15, 0.15, 0.15, 1};
		};
		
		class GVAR(TEXTTarget): GVAR(GUI_Text) {
			idc = -1;
			
			x = Krzyc_OFFSET + (Krzyc_ELEMENT_X * 5.475);
			y = Krzyc_OFFSET + (Krzyc_ELEMENT_Y * 7.5);
			w = (Krzyc_ELEMENT_W * 1.5);
			h = Krzyc_ELEMENT_H;
			Size = 0.1;
			
			text = "Komputer Artyleryjski";
			tooltip = "";
		};
		class GVAR(TEXTOwnGrid): GVAR(GUI_Text) {
			idc = 47501;
			
			x = Krzyc_OFFSET + (Krzyc_ELEMENT_X * 2.74);
			y = Krzyc_OFFSET + (Krzyc_ELEMENT_Y * 10.3);
			w = (Krzyc_ELEMENT_W * 1.2);
			h = Krzyc_ELEMENT_H;
			
			text = "Pozycja Własna";
			tooltip = "Koordynaty pozycji własnej - przynajmniej 6 cyfrowe. Np. 123-123.";
		};
		
		class GVAR(TEXTOwnGridX): GVAR(GUI_Text) {
			idc = 47502;
			
			x = Krzyc_OFFSET + (Krzyc_ELEMENT_X * 2.8);
			y = Krzyc_OFFSET + (Krzyc_ELEMENT_Y * 12);
			w = (Krzyc_ELEMENT_W * 0.5);
			h = Krzyc_ELEMENT_H;
			
			text = "X";
			tooltip = "Koordynat X własny";
		};
		
		class GVAR(TEXTOwnGridY): GVAR(GUI_Text) {
			idc = 47503;
			
			x = Krzyc_OFFSET + (Krzyc_ELEMENT_X * 2.8);
			y = Krzyc_OFFSET + (Krzyc_ELEMENT_Y * 14);
			w = (Krzyc_ELEMENT_W * 0.5);
			h = Krzyc_ELEMENT_H;
			
			text = "Y";
			tooltip = "Koordynat Y własny";
		};

		class GVAR(TBoxOwnGridX): GVAR(GUI_TextBox) {
			idc = 47504;
			
			x = Krzyc_OFFSET + (Krzyc_ELEMENT_X * 3.4);
			y = Krzyc_OFFSET + (Krzyc_ELEMENT_Y * 12);
			w = (Krzyc_ELEMENT_W * 0.6);
			h = Krzyc_ELEMENT_H;

			text = "";
		};
		
		class GVAR(TBoxOwnGridY): GVAR(GUI_TextBox) {
			idc = 47505;
			
			x = Krzyc_OFFSET + (Krzyc_ELEMENT_X * 3.4);
			y = Krzyc_OFFSET + (Krzyc_ELEMENT_Y * 14);
			w = (Krzyc_ELEMENT_W * 0.6);
			h = Krzyc_ELEMENT_H;

			text = "";	
		};

		class GVAR(TEXTTargetGrid): GVAR(GUI_Text) {
			idc = 47506;
			
			x = Krzyc_OFFSET + (Krzyc_ELEMENT_X * 5.74);
			y = Krzyc_OFFSET + (Krzyc_ELEMENT_Y * 10.3);
			w = (Krzyc_ELEMENT_W * 1.2);
			h = Krzyc_ELEMENT_H;
			
			text = "Pozycja Celu";
			tooltip = "Koordynaty celu - przynajmniej 6 cyfrowe. Np. 123-123.";
		};
		
		class GVAR(TEXTTargetGridX): GVAR(GUI_Text) {
			idc = 47507;
			
			x = Krzyc_OFFSET + (Krzyc_ELEMENT_X * 5.8);
			y = Krzyc_OFFSET + (Krzyc_ELEMENT_Y * 12);
			w = (Krzyc_ELEMENT_W * 0.5);
			h = Krzyc_ELEMENT_H;
			
			text = "X";
			tooltip = "Koordynat X celu";
		};
		
		class GVAR(TEXTTargetGridY): GVAR(GUI_Text) {
			idc = 47508;
			
			x = Krzyc_OFFSET + (Krzyc_ELEMENT_X * 5.8);
			y = Krzyc_OFFSET + (Krzyc_ELEMENT_Y * 14);
			w = (Krzyc_ELEMENT_W * 0.5);
			h = Krzyc_ELEMENT_H;
			
			text = "Y";
			tooltip = "Koordynat Y celu";
		};
		class GVAR(TBoxTargetGridX): GVAR(GUI_TextBox) {
			idc = 47509;
			
			x = Krzyc_OFFSET + (Krzyc_ELEMENT_X * 6.4);
			y = Krzyc_OFFSET + (Krzyc_ELEMENT_Y * 12);
			w = (Krzyc_ELEMENT_W * 0.6);
			h = Krzyc_ELEMENT_H;

			text = "";
		};
		
		class GVAR(TBoxTargetGridY): GVAR(GUI_TextBox) {
			idc = 47510;
			
			x = Krzyc_OFFSET + (Krzyc_ELEMENT_X * 6.4);
			y = Krzyc_OFFSET + (Krzyc_ELEMENT_Y * 14);
			w = (Krzyc_ELEMENT_W * 0.6);
			h = Krzyc_ELEMENT_H;

			text = "";
		};
		
		class GVAR(ButtonTargetDirMil): GVAR(GUI_Text) {
			idc = 47511;
			
			x = Krzyc_OFFSET + (Krzyc_ELEMENT_X * 10);
			y = Krzyc_OFFSET + (Krzyc_ELEMENT_Y * 12);
			w = (Krzyc_ELEMENT_W * 0.4);
			h = Krzyc_ELEMENT_H;
			
			text = "DIR";
			tooltip = "Wyliczony kierunek do celu";
		};

		class GVAR(ButtonTargetDistance): GVAR(GUI_Text) {
			idc = 47512;
			
			x = Krzyc_OFFSET + (Krzyc_ELEMENT_X * 10);
			y = Krzyc_OFFSET + (Krzyc_ELEMENT_Y * 14);
			w = (Krzyc_ELEMENT_W * 0.4);
			h = Krzyc_ELEMENT_H;
			
			text = "DIS";
			tooltip = "Wyliczony dystans do celu";
		};

		class GVAR(ButtonTargetElev): GVAR(GUI_Text) {
			idc = 47513;
						
			x = Krzyc_OFFSET + (Krzyc_ELEMENT_X * 10);
			y = Krzyc_OFFSET + (Krzyc_ELEMENT_Y * 16);
			w = (Krzyc_ELEMENT_W * 0.4);
			h = Krzyc_ELEMENT_H;
			
			text = "ELEV";
			tooltip = "Wyliczona elewacja działa";
		};

		class GVAR(TBoxTargetPolarDir): GVAR(GUI_TextBox) {
			idc = 47515;
			maxChars = 4;
			
			x = Krzyc_OFFSET + (Krzyc_ELEMENT_X * 10.8);
			y = Krzyc_OFFSET + (Krzyc_ELEMENT_Y * 12);
			w = (Krzyc_ELEMENT_W * 0.6);
			h = Krzyc_ELEMENT_H;
			
			text = "";
		};
		
		class GVAR(TBoxTargetDist): GVAR(GUI_TextBox) {
			idc = 47516;
			
			x = Krzyc_OFFSET + (Krzyc_ELEMENT_X * 10.8);
			y = Krzyc_OFFSET + (Krzyc_ELEMENT_Y * 14);
			w = (Krzyc_ELEMENT_W * 0.6);
			h = Krzyc_ELEMENT_H;
			
			text = "";
		};

		class GVAR(TBoxTargetElev): GVAR(GUI_TextBox) {
			idc = 47517;
			maxChars = 4;
			
			x = Krzyc_OFFSET + (Krzyc_ELEMENT_X * 10.8);
			y = Krzyc_OFFSET + (Krzyc_ELEMENT_Y * 16);
			w = (Krzyc_ELEMENT_W * 0.6);
			h = Krzyc_ELEMENT_H;
			
			text = "";
		};
		
		class GVAR(ButtonTargetApply): GVAR(GUI_Button2) {
			idc = 47518;
			
			x = Krzyc_OFFSET + (Krzyc_ELEMENT_X * 6);
			y = Krzyc_OFFSET + (Krzyc_ELEMENT_Y * 18);
			w = (Krzyc_ELEMENT_W * 0.6);
			
			text = "Wylicz";
			tooltip = "Oblicza dystans oraz kierunek do celu, a także elewację oraz ładunek";
			onButtonClick = "playSound 'click'; 0 call Krzyc_fnc_calculate";
		};

		class GVAR(Charge): GVAR(GUI_List) {
			idc = 47519;
			
			x = Krzyc_OFFSET + (Krzyc_ELEMENT_X * 1);
			y = Krzyc_OFFSET + (Krzyc_ELEMENT_Y * 5.2);
			w = (Krzyc_ELEMENT_W * 1);
			h = 0.1;
			
			text = "";
			tooltip = "";
			onLBSelChanged = "playSound 'click'";
		};
		
		class GVAR(GUI_ButtonCloseComputer1): GVAR(GUI_ButtonClose){};

	};
};