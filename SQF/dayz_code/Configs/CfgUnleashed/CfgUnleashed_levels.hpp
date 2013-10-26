class levels
{
	name=levels;
	idd=8567;
	movingEnable=1;
	controlsBackground[]={level_bg};
	objects[]={};
	access = 0;
	controls[]={closeButton, text4, text1, value5, value4, value3, value2, value1, text2, text1, text4, text5, text3, up1, up5, up4, up3, up2};

	class RscBgFrame
	{
		
		type=CT_STATIC;
		idc=-1;
		style=ST_FRAME;
		colorBackground[]={0.4, 0.4, 0.4, 0.75};
		colorText[]={0, 0, 0, 1};
		font=FontM;
		SizeEX=0.025;
	};
	
	class closeButton:RscButton
	{
		idc=-1;
		text="Close";
		x = 0.453126;
		y = 0.85;
		w = 0.0937499;
		h = 0.0750001;
		action = "close dialog 0;";
	};
	class value1:RscText
	{
		idc=8000;
		text = "";
		x = 0.406249;
		y = 0.174999;
		w = 0.0999999;
		h = 0.0999999;
	};
	
	class value2:RscText
	{
		idc=8001;
		text = "";
		x = 0.406249;
		y = 0.299999;
		w = 0.0999999;
		h = 0.0999999;
	};
	
	class value3:RscText
	{
		idc=8002;
		text = "";
		x = 0.406249;
		y = 0.424999;
		w = 0.0999999;
		h = 0.0999999;
	};

	class value4:RscText
	{
		idc=8003;
		text = "";
		x = 0.406249;
		y = 0.55;
		w = 0.0999999;
		h = 0.0999999;
	};
	
	class value5:RscText
	{
		idc=8004;
		text = "";
		x = 0.406249;
		y = 0.675;
		w = 0.0999999;
		h = 0.0999999;
	};

	class text1:RscText
	{
		idc=8010;
		text = "";
		x = 0.187501;
		y = 0.174999;
		w = 0.0999999;
		h = 0.0999999;
	};
	
	class text2:RscText
	{
		idc=8011;
		text = "";
		x = 0.187501;
		y = 0.299999;
		w = 0.0999999;
		h = 0.0999999;
	};
	
	class text3:RscText
	{
		idc=8012;
		text = "";
		x = 0.187501;
		y = 0.424999;
		w = 0.0999999;
		h = 0.0999999;
	};
	
	class text4:RscText
	{
		idc=8013;
		text = "";
		x = 0.187501;
		y = 0.55;
		w = 0.0999999;
		h = 0.0999999;
	};
	
	class text5:RscText
	{
		idc=8014;
		text = "";
		x = 0.187501;
		y = 0.675;
		w = 0.0999999;
		h = 0.0999999;
	};

	class up1:RscButton
	{
		idc=-1;
		x = 0.640625;
		y = 0.2;
		w = 0.0937499;
		h = 0.0750001;
		text = "ADD";
		font = "Zeppelin33";
		action = "_XXXvalue = 1;";
		soundClick[] = {"\dayz_sfx\action\cell\dtmf_1.ogg",0.5,1};
	};

	class up2:RscButton
	{
		idc=-1;
		x = 0.640625;
		y = 0.325;
		w = 0.0937499;
		h = 0.0750001;
		text = "ADD";
		font = "Zeppelin33";
		action = "_XXXvalue = 1;";
		soundClick[] = {"\dayz_sfx\action\cell\dtmf_1.ogg",0.5,1};
	};

	class up3:RscButton
	{
		idc=-1;
		x = 0.640625;
		y = 0.45;
		w = 0.0937499;
		h = 0.0750001;
		text = "ADD";
		font = "Zeppelin33";
		action = "_XXXvalue = 1;";
		soundClick[] = {"\dayz_sfx\action\cell\dtmf_1.ogg",0.5,1};
	};
	
	class up4:RscButton
	{
		idc=-1;
		x = 0.640625;
		y = 0.575001;
		w = 0.0937499;
		h = 0.0750001;
		text = "ADD";
		font = "Zeppelin33";
		action = "_XXXvalue = 1;";
		soundClick[] = {"\dayz_sfx\action\cell\dtmf_1.ogg",0.5,1};
	};
	
	class up5:RscButton
	{
		idc=-1;
		x = 0.640625;
		y = 0.700001;
		w = 0.0937499;
		h = 0.0750001;
		text = "ADD";
		font = "Zeppelin33";
		action = "_XXXvalue = 1;";
		soundClick[] = {"\dayz_sfx\action\cell\dtmf_1.ogg",0.5,1};
	};

	class level_bg:RscBgFrame
	{
		idc=-1;
		text = "unleashed_pack\textures\classes\green.paa";
		x = 0.126594;
		y = 0.0250002;
		w = 0.75;
		h = 0.975001;
	};
	class UnspentText: RscText
	{
		idc = -1;
		text = "Unspent";
		x = 0.328126;
		y = 0.050001;
		w = 0.0999999;
		h = 0.0999999;
	};
	class UnspentValue: RscText
	{
		idc = 8020;
		text = "Value";
		x = 0.546874;
		y = 0.050001;
		w = 0.0999999;
		h = 0.0999999;
	};


};