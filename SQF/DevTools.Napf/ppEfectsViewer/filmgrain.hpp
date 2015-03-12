
class kndr_filmGrainUI
{
	idd = KNDR_FILM_DLG;
	movingEnable = 1;
	controlsBackground[] = { };	
	name = "kndr filmgrain preview UI";
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
			action = " ""FilmGrain"" ppEffectEnable true; hint ""enable""; ";
			x = 0.8;
			y = 0.2;
			text = "enable";
		};
		class DisableBtnClrCor : Button
		{
			action = " ""FilmGrain"" ppEffectEnable false; hint ""disable"";";
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

		class ASldr : kndrSlider
		{
			idc = KNDR_SLIDER0_ID + 3;
			x = 0.1 + (3 * KNDR_OFFSET);
			onSliderPosChanged = "fg1 = ((_this select 1) / 10); [] call setFilmGrain;"; 
		};
		class BSldr : kndrSlider
		{
			idc = KNDR_SLIDER0_ID + 4;
			x = 0.1 + (4 * KNDR_OFFSET);
			onSliderPosChanged = "fg2 = ((_this select 1) * 2); [] call setFilmGrain;"; 
		};
		class CSldr : kndrSlider
		{
			idc = KNDR_SLIDER0_ID + 5;
			x = 0.1 + (5 * KNDR_OFFSET);
			onSliderPosChanged = "fg3 = (_this select 1); [] call setFilmGrain;"; 
		};
		class DSldr : kndrSlider
		{
			idc = KNDR_SLIDER0_ID + 6;
			x = 0.1 + (6 * KNDR_OFFSET);
			onSliderPosChanged = "fg4 = ((_this select 1)); [] call setFilmGrain;"; 
		};
		class ESldr : kndrSlider
		{
			idc = KNDR_SLIDER0_ID + 7;
			x = 0.1 + (7 * KNDR_OFFSET);
			onSliderPosChanged = "fg5 = ((_this select 1)); [] call setFilmGrain;"; 
		};
		class MonoBttn : Button
		{
			idc = KNDR_SLIDER0_ID + 8;
			x = 0.1 + (8 * KNDR_OFFSET);
			y = 0.70;
			text = "monochro...";
			action = "fg6 = ! fg6; [] call setFilmGrain;"; 
		};
	};
};
