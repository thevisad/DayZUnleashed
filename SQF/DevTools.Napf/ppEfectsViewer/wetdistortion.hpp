class kndr_WetDistortionUI
{
	idd = KNDR_WET_DLG;
	movingEnable = 1;
	controlsBackground[] = { };	
	name = "kndr WetDistortion preview UI";
	class controls
	{
		//-------------------------------------------
		class DTLabel: RscText
		{
			x = 0.8;
			y = 0.14; 
			text = "daytime:";
		};
		class DayTimee : kndrSlider
		{
			style = KNDR_HORZ;
			x = 0.8; y = 0.19;
			w = 0.20; h = 0.02;
			onSliderPosChanged = " skipTime ((_this select 1) * 2.4 - daytime); hintSilent format[""daytime=%1"", (round (daytime * 100)) / 100]; ";
		};
		class EnableBtnClrCor : Button
		{
			action = " ""WetDistortion"" ppEffectEnable true; hint ""enable""; ";
			x = 0.8;
			y = 0.2;
			text = "enable";
		};
		class DisableBtnClrCor : Button
		{
			action = " ""WetDistortion"" ppEffectEnable false; hint ""disable"";";
			x = 0.8;
			y = 0.25;
			text = "disable";
		};
		class ClipboardBttn : Button
		{
			action = "copyToClipboard clipboardText;";
			x = 0.8;
			y = 0.3;
			text = "to clipboard";
		};
		class ToRptBttn : Button
		{
			action = "diag_log clipboardText;";
			x = 0.8;
			y = 0.35;
			text = "to arma2.rpt";
		};

		//----------------------------------------
		class BrightLabel: RscText
		{	
			x = 0.05;
			sizeEx = 0.02;
			text = "blur, str.Top, str.Bottom";
		};
		class Sldr1 : kndrSlider
		{
			idc = KNDR_SLIDER0_ID;
			x = 0.1;
			onSliderPosChanged = "wd1 = ((_this select 1)/10); [] call setWetDistortion;"; 
		};
		class Sldr2 : kndrSlider
		{
			idc = KNDR_SLIDER0_ID + 1;
			x = 0.1 + (1 * KNDR_OFFSET);
			onSliderPosChanged = "wd2 = ((_this select 1)); [] call setWetDistortion;"; 
		};
		class Sldr3 : kndrSlider
		{
			idc = KNDR_SLIDER0_ID + 2;
			x = 0.1 + (2 * KNDR_OFFSET);
			onSliderPosChanged = "wd3 = ((_this select 1)); [] call setWetDistortion;"; 
		};
		
		class Label1: RscText
		{	
			x = 0.1 + (3 * KNDR_OFFSET);
			sizeEx = 0.02;
			text = "wave speed";
		};
		class Sldr4 : kndrSlider
		{
			idc = KNDR_SLIDER0_ID + 3;
			x = 0.1 + (3 * KNDR_OFFSET);
			onSliderPosChanged = "wd4 = ((_this select 1)); [] call setWetDistortion;"; 
		};
		class Sldr5 : kndrSlider
		{
			idc = KNDR_SLIDER0_ID + 4;
			x = 0.1 + (4 * KNDR_OFFSET);
			onSliderPosChanged = "wd5 = ((_this select 1)); [] call setWetDistortion;"; 
		};
		class Sldr6 : kndrSlider
		{
			idc = KNDR_SLIDER0_ID + 5;
			x = 0.1 + (5 * KNDR_OFFSET);
			onSliderPosChanged = "wd6 = ((_this select 1)); [] call setWetDistortion;"; 
		};
		class Sldr7 : kndrSlider
		{
			idc = KNDR_SLIDER0_ID + 6;
			x = 0.1 + (6 * KNDR_OFFSET);
			onSliderPosChanged = "wd7 = ((_this select 1)); [] call setWetDistortion;"; 
		};
		
		class Label2: RscText
		{	
			x = 0.1 + (7 * KNDR_OFFSET);
			sizeEx = 0.02;
			text = "wave amplitudes";
		};
		class R2Sldr : kndrSlider
		{
			idc = KNDR_SLIDER0_ID + 7;
			x = 0.1 + (7 * KNDR_OFFSET);
			onSliderPosChanged = "wd8 = ((_this select 1)); [] call setWetDistortion;"; 
		};
		class G2Sldr : kndrSlider
		{
			idc = KNDR_SLIDER0_ID + 8;
			x = 0.1 + (8 * KNDR_OFFSET);
			onSliderPosChanged = "wd9 = ((_this select 1)); [] call setWetDistortion;"; 
		};
		class B2Sldr : kndrSlider
		{
			idc = KNDR_SLIDER0_ID + 9;
			x = 0.1 + (9 * KNDR_OFFSET);
			onSliderPosChanged = "wd10 = ((_this select 1)); [] call setWetDistortion;"; 
		};
		class A2Sldr : kndrSlider
		{
			idc = KNDR_SLIDER0_ID + 10;
			x = 0.1 + (10 * KNDR_OFFSET);
			onSliderPosChanged = "wd11 = ((_this select 1)); [] call setWetDistortion;"; 
		};
		
		class Label3: RscText
		{	
			x = 0.1 + (11 * KNDR_OFFSET);
			sizeEx = 0.02;
			text = "phase coefficients";
		};
		class R3Sldr : kndrSlider
		{
			idc = KNDR_SLIDER0_ID + 11;
			x = 0.1 + (11 * KNDR_OFFSET);
			onSliderPosChanged = "wd12 = ((_this select 1)); [] call setWetDistortion;"; 
		};
		class G3Sldr : kndrSlider
		{
			idc = KNDR_SLIDER0_ID + 12;
			x = 0.1 + (12 * KNDR_OFFSET);
			onSliderPosChanged = "wd13 = ((_this select 1)); [] call setWetDistortion;"; 
		};
		class B3Sldr : kndrSlider
		{
			idc = KNDR_SLIDER0_ID + 13;
			x = 0.1 + (13 * KNDR_OFFSET);
			onSliderPosChanged = "wd14 = ((_this select 1)); [] call setWetDistortion;"; 
		};
		class A3Sldr : kndrSlider
		{
			idc = KNDR_SLIDER0_ID + 14;
			x = 0.1 + (14 * KNDR_OFFSET);
			onSliderPosChanged = "wd15 = ((_this select 1)); [] call setWetDistortion;"; 
		};
	};
};
