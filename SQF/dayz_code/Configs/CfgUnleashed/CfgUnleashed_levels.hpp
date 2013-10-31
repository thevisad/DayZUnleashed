class levels
{
	name=levels;
	idd=8567;
	movingEnable=1;
	controlsBackground[]={level_bg};
	objects[]={};
	access = 0;
	controls[]={RscPicture, closeButton, faketext1, faketext2, faketext3, faketext4, faketext5, value5, value4, value3, value2, value1, up1, up5, up4, up3, up2, unspentValue, unspentText, playerPassText, playerIDText, skill1, skill2, skill3, skill4, skill5 };

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
	class level_bg: RscFrame
	{
		idc=-1;
		text = "\z\addons\unleashed_pack\textures\classes\green.paa";
		x = 0.128125;
		y = -0.113972;
		w = 0.69375;
		h = 1.11375;
	};
	
		class background: RscPicture
	{
		idc=-1;
		text = "\z\addons\unleashed_pack\textures\classes\green.paa";
		x = 0.128125;
		y = -0.113972;
		w = 0.69375;
		h = 1.11375;
	};
	
	
	class up1:RscButton
	{
		idc=-1;
		x = 0.665781;
		y = 0.166218;
		w = 0.0937499;
		h = 0.0750001;
		text = "ADD";
		font = "Zeppelin33";
		action = "_text = ctrlText 8030;hintsilent format [""Target Skill %1"",_text];[player,_text,1] call DZU_fnc_levelUp;[] call updateUI;";
		soundClick[] = {"\dayz_sfx\action\cell\dtmf_1.ogg",0.5,1};
	};

	class up2:RscButton
	{
		idc=-1;
		x = 0.665781;
		y = 0.305437;
		w = 0.0937499;
		h = 0.0750001;
		text = "ADD";
		font = "Zeppelin33";
		action = "_text = ctrlText 8031;hintsilent format [""Target Skill %1"",_text];[player,_text,1] call DZU_fnc_levelUp;[] call updateUI;";
		soundClick[] = {"\dayz_sfx\action\cell\dtmf_1.ogg",0.5,1};
	};

	class up3:RscButton
	{
		idc=-1;
		x = 0.665781;
		y = 0.444656;
		w = 0.0937499;
		h = 0.0750001;
		text = "ADD";
		font = "Zeppelin33";
		action = "_text = ctrlText 8032;hintsilent format [""Target Skill %1"",_text];[player,_text,1] call DZU_fnc_levelUp;[] call updateUI;";
		soundClick[] = {"\dayz_sfx\action\cell\dtmf_1.ogg",0.5,1};
	};
	
	class up4:RscButton
	{
		idc=-1;
		x = 0.665781;
		y = 0.583875;
		w = 0.0937499;
		h = 0.0750001;
		text = "ADD";
		font = "Zeppelin33";
		action = "_text = ctrlText 8033;hintsilent format [""Target Skill %1"",_text];[player,_text,1] call DZU_fnc_levelUp;[] call updateUI;";
		soundClick[] = {"\dayz_sfx\action\cell\dtmf_1.ogg",0.5,1};
	};
	
	class up5:RscButton
	{
		idc=-1;
		x = 0.665781;
		y = 0.723093;
		w = 0.0937499;
		h = 0.0750001;
		text = "ADD";
		font = "Zeppelin33";
		action = "[player,""Generic""] call DZU_fnc_giveEXP;[player,""Generic_Engineering""] call DZU_fnc_giveEXP;_text = ctrlText 8034;[player,_text,1] call DZU_fnc_levelUp;[] call updateUI;";
		soundClick[] = {"\dayz_sfx\action\cell\dtmf_1.ogg",0.5,1};
	};
	
	
	class closeButton:RscButton
	{
		idc=-1;
		text="Close";
		x = 0.405625;
		y = 0.890156;
		w = 0.0937499;
		h = 0.0750001;
		action = "closeDialog 0;";
	};
	

	class value5:RscText
	{
		idc=8004;
		text = "";
		x = 0.422969;
		y = 0.723093;
		w = 0.0999999;
		h = 0.0999999;
	};
	
	class value4:RscText
	{
		idc=8003;
		text = "";
		x = 0.422969;
		y = 0.583875;
		w = 0.0999999;
		h = 0.0999999;
	};
	
	class value3:RscText
	{
		idc=8002;
		text = "";
		x = 0.422969;
		y = 0.444656;
		w = 0.0999999;
		h = 0.0999999;
	};
	
	
	class value2:RscText
	{
		idc=8001;
		text = "";
		x = 0.422969;
		y = 0.305437;
		w = 0.0999999;
		h = 0.0999999;
	};
	
	class value1:RscText
	{
		idc=8000;
		text = "";
		x = 0.422969;
		y = 0.166218;
		w = 0.0999999;
		h = 0.0999999;
	};
	
	class unspentValue: RscText
	{
		idc = 8020;
		text = "Value";
		x = 0.422969;
		y = 0.0269997;
		w = 0.0999999;
		h = 0.0999999;
	};
	
	class unspentText: RscText
	{
		idc = -1;
		text = "Unspent";
		x = 0.180156;
		y = 0.0269997;
		w = 0.208125;
		h = 0.111375;
	};	
	class Skill1: RscText
	{
		idc=8010;
		text = "";
		x = 0.180156;
		y = 0.166218;
		w = 0.208125;
		h = 0.111375;
	};
	
	class Skill2: RscText
	{
		idc=8011;
		text = "";
		x = 0.180156;
		y = 0.305437;
		w = 0.208125;
		h = 0.111375;
	};
	
	class Skill3: RscText
	{
		idc=8012;
		text = "";
		x = 0.180156;
		y = 0.444656;
		w = 0.208125;
		h = 0.111375;
	};
	
	class Skill4: RscText
	{
		idc=8013;
		text = "";
		x = 0.180156;
		y = 0.583875;
		w = 0.208125;
		h = 0.111375;
	};
	
	class Skill5: RscText
	{
		idc=8014;
		text = "";
		x = 0.180156;
		y = 0.723093;
		w = 0.208125;
		h = 0.111375;
	};
	
	class playerPassText: RscText
	{
		idc = 8041;

		text = "";
		x = 0.579063;
		y = -0.0843752;
		w = 0.16683;
		h = 0.0929895;
	};
	class playerIDText: RscText 
	{
		idc = 8040;

		text = "";
		x = 0.1975;
		y = -0.0843752;
		w = 0.16683;
		h = 0.0929895;
	};

	class faketext1:RscText
	{
		idc=8030;
		text = "";
		x = 0.187501;
		y = 0.174999;
		w = 0.0999999;
		h = 0.0999999;
	};
	
	class faketext2:RscText
	{
		idc=8031;
		text = "";
		x = 0.187501;
		y = 0.299999;
		w = 0.0999999;
		h = 0.0999999;
	};
	
	class faketext3:RscText
	{
		idc=8032;
		text = "";
		x = 0.187501;
		y = 0.424999;
		w = 0.0999999;
		h = 0.0999999;
	};
	
	class faketext4:RscText
	{
		idc=8033;
		text = "";
		x = 0.187501;
		y = 0.55;
		w = 0.0999999;
		h = 0.0999999;
	};
	
	class faketext5:RscText
	{
		idc=8034;
		text = "";
		x = 0.187501;
		y = 0.675;
		w = 0.0999999;
		h = 0.0999999;
	};
};