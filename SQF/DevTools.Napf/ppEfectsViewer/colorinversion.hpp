
class kndr_colorInversionUI
{
	idd = KNDR_INVERSION_DLG;
	movingEnable = 1;
	controlsBackground[] = { };	
	name = "kndr color inversion preview UI";
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
			action = " ""ColorInversion"" ppEffectEnable true; hint ""enable""; ";
			x = 0.8;
			y = 0.2;
			text = "enable";
		};
		class DisableBtnClrCor : Button
		{
			action = " ""ColorInversion"" ppEffectEnable false; hint ""disable"";";
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
		
		//------------------------------
		class ASldr : kndrSlider
		{
			idc = KNDR_SLIDER0_ID + 3;
			x = 0.1 + (3 * KNDR_OFFSET);
			onSliderPosChanged = "ci1 = ((_this select 1) / 10); [] call setColorInversion;"; 
		};
		class BSldr : kndrSlider
		{
			idc = KNDR_SLIDER0_ID + 4;
			x = 0.1 + (4 * KNDR_OFFSET);
			onSliderPosChanged = "ci2 = ((_this select 1) / 10); [] call setColorInversion;"; 
		};
		class CSldr : kndrSlider
		{
			idc = KNDR_SLIDER0_ID + 5;
			x = 0.1 + (5 * KNDR_OFFSET);
			onSliderPosChanged = "ci3 = ((_this select 1) / 10); [] call setColorInversion;"; 
		};
	};
};