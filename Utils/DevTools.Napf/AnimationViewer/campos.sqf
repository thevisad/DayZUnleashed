/******************++***
***                  ***
*** Animation Viewer ***
***                  ***
***      V1.3b       ***
***                  ***
************************
*** ...by Clayman
*** 02.07.2010
************************/


switch (_this select 0) do
{
	case 1:
	{
		switch (CLAY_CamDir) do
		{
			case 1:
			{
				If (CLAY_CamZoomY > 0.5) Then {CLAY_CamZoomY = CLAY_CamZoomY - 0.5};
			};
			case 2:
			{
				If (CLAY_CamZoomY < -0.5) Then {CLAY_CamZoomY = CLAY_CamZoomY + 0.5};
			};
			case 3:
			{
				If (CLAY_CamZoomX < -0.5) Then {CLAY_CamZoomX = CLAY_CamZoomX + 0.5};
			};
			case 4:
			{
				If (CLAY_CamZoomX > 0.5) Then {CLAY_CamZoomX = CLAY_CamZoomX - 0.5};
			};
		};
	};
	case 2:
	{
		switch (CLAY_CamDir) do
		{
			case 1:
			{
				If (CLAY_CamZoomY < 10) Then {CLAY_CamZoomY = CLAY_CamZoomY + 0.5};
			};
			case 2:
			{
				If (CLAY_CamZoomY > -10) Then {CLAY_CamZoomY = CLAY_CamZoomY - 0.5};
			};
			case 3:
			{
				If (CLAY_CamZoomX > -10) Then {CLAY_CamZoomX = CLAY_CamZoomX - 0.5};
			};
			case 4:
			{
				If (CLAY_CamZoomX < 10) Then {CLAY_CamZoomX = CLAY_CamZoomX + 0.5};
			};
		};
	};
	case 3:
	{
		CLAY_CamOffsetX = -1;
		CLAY_CamOffsetY = 0;
		CLAY_CamZoomX = 0;
		CLAY_CamZoomY = 3.5;
		CLAY_CamDir = 1;
	};
	case 4:
	{
		CLAY_CamOffsetX = 1;
		CLAY_CamOffsetY = 0;
		CLAY_CamZoomX = 0;
		CLAY_CamZoomY = -3.5;
		CLAY_CamDir = 2;
	};
	case 5:
	{
		CLAY_CamOffsetX = 0;
		CLAY_CamOffsetY = -1;
		CLAY_CamZoomX = -3.5;
		CLAY_CamZoomY = 0;
		CLAY_CamDir = 3;
	};
	case 6:
	{
		CLAY_CamOffsetX = 0;
		CLAY_CamOffsetY = 1;
		CLAY_CamZoomX = 3.5;
		CLAY_CamZoomY = 0;
		CLAY_CamDir = 4;
	};
};
