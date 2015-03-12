class DZGMHud_Rsc
{
	idd = -1;
	movingEnable = 1;
	enableSimulation = 1;
	enableDisplay = 1;

	onLoad = "uiNamespace setVariable ['dzgmHudDisp',_this select 0];";

	duration = 99999999999999999;
	fadein  = 0;
	fadeout = 0;
	class controls
	{
		class Icons : w_RscStructuredText
		{
			idc = -1;
			style = 0x00;
			x = 0.9;
			y = 0.9;
			w = 0.9;
			h = 0.9;
			size = 0.08;
			colorBackground[] = {0,0,0,0};
			colortext[] = {0,0,0,0.7};
			text ="";
			class Attributes {
				align = "left";
			};		
		};
		class PlayerIcon00:Icons {idc = 46300 +  0;};
		class PlayerIcon01:Icons {idc = 46300 +  1;};
		class PlayerIcon02:Icons {idc = 46300 +  2;};
		class PlayerIcon03:Icons {idc = 46300 +  3;};
		class PlayerIcon04:Icons {idc = 46300 +  4;};
		class PlayerIcon05:Icons {idc = 46300 +  5;};
		class PlayerIcon06:Icons {idc = 46300 +  6;};
		class PlayerIcon07:Icons {idc = 46300 +  7;};
		class PlayerIcon08:Icons {idc = 46300 +  8;};
		class PlayerIcon09:Icons {idc = 46300 +  9;};
		class PlayerIcon10:Icons {idc = 46300 + 10;};
		class PlayerIcon11:Icons {idc = 46300 + 11;};
		class PlayerIcon12:Icons {idc = 46300 + 12;};
		class PlayerIcon13:Icons {idc = 46300 + 13;};
		class PlayerIcon14:Icons {idc = 46300 + 14;};
		class PlayerIcon15:Icons {idc = 46300 + 15;};
		class PlayerIcon16:Icons {idc = 46300 + 16;};
		class PlayerIcon17:Icons {idc = 46300 + 17;};
		class PlayerIcon18:Icons {idc = 46300 + 18;};
		class PlayerIcon19:Icons {idc = 46300 + 19;};
		class PlayerIcon20:Icons {idc = 46300 + 20;};
		class PlayerIcon21:Icons {idc = 46300 + 21;};
		class PlayerIcon22:Icons {idc = 46300 + 22;};
		class PlayerIcon23:Icons {idc = 46300 + 23;};
		class PlayerIcon24:Icons {idc = 46300 + 24;};
		class PlayerIcon25:Icons {idc = 46300 + 25;};
		class PlayerIcon26:Icons {idc = 46300 + 26;};
		class PlayerIcon27:Icons {idc = 46300 + 27;};
		class PlayerIcon28:Icons {idc = 46300 + 28;};
		class PlayerIcon29:Icons {idc = 46300 + 29;};
		class PlayerIcon30:Icons {idc = 46300 + 30;};
		class PlayerIcon31:Icons {idc = 46300 + 31;};
		class PlayerIcon32:Icons {idc = 46300 + 32;};
		class PlayerIcon33:Icons {idc = 46300 + 33;};
		class PlayerIcon34:Icons {idc = 46300 + 34;};
		class PlayerIcon35:Icons {idc = 46300 + 35;};
		class PlayerIcon36:Icons {idc = 46300 + 36;};
		class PlayerIcon37:Icons {idc = 46300 + 37;};
		class PlayerIcon38:Icons {idc = 46300 + 38;};
		class PlayerIcon39:Icons {idc = 46300 + 39;};
		class PlayerIcon40:Icons {idc = 46300 + 40;};
	};
};