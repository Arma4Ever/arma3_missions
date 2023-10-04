////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Harven, v1.063, #Tixoko)
////////////////////////////////////////////////////////
class HvrBasicButton: RscButton
{
	text = "ss";
	x = 0;
	y = 0.2;
	w = 0.498;
	h = 0.06;
	colorBackground[] = {0,0,0,0.8};
};

class HvrBasicButtonLeft: HvrBasicButton
{
	x = 0;	
};

class HvrBasicButtonRight: HvrBasicButton
{
	x = 0.502;	
};

class HvrBasicPanelHeader: RscStructuredTextHeader
{
	text = "ss";
	colorBackground[] = {0.13,0.53,0.21,0.8};	
};

class HvrBasicPanelContent: RscStructuredText
{
	text = "ss"; //--- ToDo: Localize;
	colorBackground[] = {0,0,0,0.8};	
};

class HvrBasicPanelLeftHeader: HvrBasicPanelHeader
{
	x = -0.3875;
	w = 0.375;
};

class HvrBasicPanelLeftText: HvrBasicPanelContent
{
	x = -0.3875;
	w = 0.375;
};

class HvrBasicPanelRightHeader: HvrBasicPanelHeader
{
	x = 1.0125;
	w = 0.375;
};

class HvrBasicPanelRightText: HvrBasicPanelContent
{
	x = 1.0125;
	w = 0.375;
};







class HvrBasic {
	idd = 2000;
	duration = 10;
	class controls {
		class RscText_1000: HvrBasicPanelHeader
		{
			idc = 1000;
			x = 0;
			y = 0;
			w = 1;
			h = 0.04;
		};
		class RscStructuredText_1100: HvrBasicPanelContent
		{
			idc = 1100;
			x = 0;
			y = 0.045;
			w = 1;
			h = 0.14;
		};

		/////////////
		// BUTTONS //
		/////////////
		class RscButton_1600: HvrBasicButtonLeft
		{
			idc = 1600;
			y = 0.2;
		};
		class RscButton_1601: HvrBasicButtonRight
		{
			idc = 1601;
			y = 0.2;
		};

		class RscButton_1602: HvrBasicButtonLeft
		{
			idc = 1602;
			y = 0.267;
		};
		class RscButton_1603: HvrBasicButtonRight
		{
			idc = 1603;
			y = 0.267;
		};

		class RscButton_1604: HvrBasicButtonLeft
		{
			idc = 1604;
			y = 0.334;
		};
		class RscButton_1605: HvrBasicButtonRight
		{
			idc = 1605;
			y = 0.334;
		};
		
		class RscButton_1606: HvrBasicButtonLeft
		{
			idc = 1606;
			y = 0.401;
		};
		class RscButton_1607: HvrBasicButtonRight
		{
			idc = 1607;
			y = 0.401;
		};
		
		class RscButton_1608: HvrBasicButtonLeft
		{
			idc = 1608;
			y = 0.468;
		};
		class RscButton_1609: HvrBasicButtonRight
		{
			idc = 1609;
			y = 0.468;
		};
		
		class RscButton_1610: HvrBasicButtonLeft
		{
			idc = 1610;
			y = 0.535;
		};
		class RscButton_1611: HvrBasicButtonRight
		{
			idc = 1611;
			y = 0.535;
		};
		
		class RscButton_1612: HvrBasicButtonLeft
		{
			idc = 1612;
			y = 0.602;
		};
		class RscButton_1613: HvrBasicButtonRight
		{
			idc = 1613;
			y = 0.602;
		};
		
		class RscButton_1614: HvrBasicButtonLeft
		{
			idc = 1614;
			y = 0.669;
		};
		class RscButton_1615: HvrBasicButtonRight
		{
			idc = 1615;
			y = 0.669;
		};
		
		class RscButton_1616: HvrBasicButtonLeft
		{
			idc = 1616;
			y = 0.736;
		};
		class RscButton_1617: HvrBasicButtonRight
		{
			idc = 1617;
			y = 0.736;
		};
		
		class RscButton_1618: HvrBasicButtonLeft
		{
			idc = 1618;
			y = 0.803;
		};
		class RscButton_1619: HvrBasicButtonRight
		{
			idc = 1619;
			y = 0.803;
		};
		/////////////////
		// END BUTTONS //
		/////////////////
	};
};

////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////