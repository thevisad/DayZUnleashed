class kndr_colorCorrectionUI
{
	idd = KNDR_PPE_DLG;
	movingEnable = 1;
	controlsBackground[] = { };	
	name = "kndr colorCorrections preview UI";
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
			action = " ""ColorCorrections"" ppEffectEnable true; hint ""enable""; ";
			x = 0.8;
			y = 0.2;
			text = "enable";
		};
		class DisableBtnClrCor : Button
		{
			action = " ""ColorCorrections"" ppEffectEnable false; hint ""disable"";";
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

		//-------------------------------------------
		class BrightLabel: RscText
		{	
			x = 0.05;
			sizeEx = 0.02;
			text = "brightness, contrast, offset";
		};
		class BrightnessSldr : kndrSlider
		{
			idc = KNDR_SLIDER0_ID;
			x = 0.1;
			onSliderPosChanged = "brightness = ((_this select 1)/10); [] call setColorCorrection;"; 
		};
		class ContrastSldr : kndrSlider
		{
			idc = KNDR_SLIDER0_ID + 1;
			x = 0.1 + (1 * KNDR_OFFSET);
			onSliderPosChanged = "contrast = ((_this select 1)/10); [] call setColorCorrection;"; 
		};
		class OffsetSldr : kndrSlider
		{
			idc = KNDR_SLIDER0_ID + 2;
			x = 0.1 + (2 * KNDR_OFFSET);
			onSliderPosChanged = "offset = ((_this select 1)/10); [] call setColorCorrection;"; 
		};
		
		class Label1: RscText
		{	
			x = 0.1 + (3 * KNDR_OFFSET);
			sizeEx = 0.02;
			text = "[R, G, B, A]";
		};
		class R1Sldr : kndrSlider
		{
			idc = KNDR_SLIDER0_ID + 3;
			x = 0.1 + (3 * KNDR_OFFSET);
			onSliderPosChanged = "R1 = ((_this select 1) - 5); [] call setColorCorrection;"; 
		};
		class G1Sldr : kndrSlider
		{
			idc = KNDR_SLIDER0_ID + 4;
			x = 0.1 + (4 * KNDR_OFFSET);
			onSliderPosChanged = "G1 = ((_this select 1) - 5); [] call setColorCorrection;"; 
		};
		class B1Sldr : kndrSlider
		{
			idc = KNDR_SLIDER0_ID + 5;
			x = 0.1 + (5 * KNDR_OFFSET);
			onSliderPosChanged = "B1 = ((_this select 1) - 5); [] call setColorCorrection;"; 
		};
		class A1Sldr : kndrSlider
		{
			idc = KNDR_SLIDER0_ID + 6;
			x = 0.1 + (6 * KNDR_OFFSET);
			onSliderPosChanged = "A1 = ((_this select 1) - 5); [] call setColorCorrection;"; 
		};
		
		class Label2: RscText
		{	
			x = 0.1 + (7 * KNDR_OFFSET);
			sizeEx = 0.02;
			text = "[R, G, B, A]";
		};
		class R2Sldr : kndrSlider
		{
			idc = KNDR_SLIDER0_ID + 7;
			x = 0.1 + (7 * KNDR_OFFSET);
			onSliderPosChanged = "R2 = ((_this select 1) - 5); [] call setColorCorrection;"; 
		};
		class G2Sldr : kndrSlider
		{
			idc = KNDR_SLIDER0_ID + 8;
			x = 0.1 + (8 * KNDR_OFFSET);
			onSliderPosChanged = "G2 = ((_this select 1) - 5); [] call setColorCorrection;"; 
		};
		class B2Sldr : kndrSlider
		{
			idc = KNDR_SLIDER0_ID + 9;
			x = 0.1 + (9 * KNDR_OFFSET);
			onSliderPosChanged = "B2 = ((_this select 1) - 5); [] call setColorCorrection;"; 
		};
		class A2Sldr : kndrSlider
		{
			idc = KNDR_SLIDER0_ID + 10;
			x = 0.1 + (10 * KNDR_OFFSET);
			onSliderPosChanged = "A2 = ((_this select 1) - 5); [] call setColorCorrection;"; 
		};
		
		class Label3: RscText
		{	
			x = 0.1 + (11 * KNDR_OFFSET);
			sizeEx = 0.02;
			text = "[R, G, B, A]";
		};
		class R3Sldr : kndrSlider
		{
			idc = KNDR_SLIDER0_ID + 11;
			x = 0.1 + (11 * KNDR_OFFSET);
			onSliderPosChanged = "R3 = ((_this select 1) - 5); [] call setColorCorrection;"; 
		};
		class G3Sldr : kndrSlider
		{
			idc = KNDR_SLIDER0_ID + 12;
			x = 0.1 + (12 * KNDR_OFFSET);
			onSliderPosChanged = "G3 = ((_this select 1) - 5); [] call setColorCorrection;"; 
		};
		class B3Sldr : kndrSlider
		{
			idc = KNDR_SLIDER0_ID + 13;
			x = 0.1 + (13 * KNDR_OFFSET);
			onSliderPosChanged = "B3 = ((_this select 1) - 5); [] call setColorCorrection;"; 
		};
		class A3Sldr : kndrSlider
		{
			idc = KNDR_SLIDER0_ID + 14;
			x = 0.1 + (14 * KNDR_OFFSET);
			onSliderPosChanged = "A3 = ((_this select 1) - 5); [] call setColorCorrection;"; 
		};
	};
};