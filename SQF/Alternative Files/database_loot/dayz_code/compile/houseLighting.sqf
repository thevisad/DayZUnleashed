//House / Building / Object Lighting for dayZ by axeman
while {alive player}
do
{
    if(daytime<6||daytime>17)//EDITABLE - Change the stop and start times for the script. No need to create lights in the day. If server set to Static time then assume time is 12.
    then { 
    private ["_strMessage","_brightness","_objLightPoint","_awayx","_awayy","_lp","_test","_hcount","_animlightpoint","_switching","_switchpercent"];
    //
    //VARIABLES
    //
    //These can be edited to change the behaviour and style of the lighting.
    //
    //_range | Distance to scan for buildings / houses in metres.
    _range=600;
    //_switchpercent | Percentage for reliability of power supply. eg. 65 will be 65% chance of lights coming on in each house (for lit house a 65% chance of second lights coming on if house has them) and 35% chance that lights will fail and flicker off.
    _switchpercent = 85;
    // _objHouse | The array of houses, generally non enterable, that have windows that light up. Add more custom buildings within the square brackets []. Must be contained in double quotes and separated by a comma.
    // House lighting does a special check to see if there is a window that is lit up before creating the ambient light point. Check the building config and ensure your house has a class of 'Lights_1' before adding here. If not sure use one of the next arrays (Industrial or Misc)
    _objHouse = nearestObjects [player, ["House","Land_HouseV_1I2"], _range];
    // _houseColour | Set the colour for the house lighting
    _houseColour=[1, 1, 1];
    // _objIndustrial | The array of industrial buildings to add a light source to. Add more custom buildings within the square brackets []. Must be contained in double quotes and separated by a comma.
    // No checks are done on this beyond looking for an existing lighpoint and animating that. Add any object here to emit an industrial light..
    _objIndustrial = nearestObjects [player, ["Land_Shed_wooden","Land_Ind_Garage01","Land_Ind_Workshop01_01","Land_Ind_Workshop01_02","Land_Ind_Workshop01_03","Land_Ind_Workshop01_04","Land_Ind_Workshop01_box","Land_Ind_Workshop01_L","Land_stodola_old_open","Land_stodola_open"], _range];
    //_indColour | Set the colour for the industrial building lighting
    _indColour=[1, 1, 0]; 
    // _objMisc | The array of misc. objects to add a light source to. Add more custom buildings within the square brackets []. Must be contained in double quotes and separated by a comma.
    // No checks are done on this beyond looking for an existing lighpoint and animating that. Add any object here to emit an misc light..
    _objMisc = nearestObjects [player, ["Land_A_FuelStation_Build","Land_Hlidac_budka","Land_A_FuelStation_Shed","Land_Mil_Barracks","Land_Mil_Barracks_L","Land_Mil_Barracks_i","Land_Mil_ControlTower","Land_a_stationhouse","Land_sara_hasic_zbroj","Land_sara_domek_zluty","Land_pumpa"], _range];
    //_miscColour | Set the colour for the misc. building lighting
    _miscColour=[1, 0, 0];
 
    //
    //NO NEED TO EDIT BELOW HERE
    //BUT FEEL FREE TO PLAY :) 
    //
     
        {
        _switching = random 100;
            [_miscColour,0.01,[3, 3, 3],[_x],0] call fnc_lightpoint;
        } forEach _objMisc;
     
        {
        _switching = random 100;
            [_indColour,0.01,[3, 3, 3],[_x],0] call fnc_lightpoint;
        } forEach _objIndustrial;
     
        {
        _switching = random 100;
        _switching2 = random 100;//Second random to mix it up, eg. some houses have two lots of windows that light up..
     
        _lightstate = _x animationPhase "Lights_1";//Current Lightstate of windows IMPORTANT first run lights are off !
     
            if(_lightstate==0) then
            {
            [[_x]] call fnc_lightson; 
            };
            [_houseColour,0.01,[5, 5, 5],[_x],1] call fnc_lightpoint;
 
            if(_lightstate==1) then
            {
            [[_x]] call fnc_lightfail;
            };
         
        } forEach _objHouse;
     
       // hint format ["All buildings within %1 metres dealt with.",_range];
        //sleep 0.5;
     
        //
        //FUNCTIONS
        //
        //Switch glowing windows on in houses that have them
        fnc_lightson={
        _building = _this select 0 select 0;
     
            if(_switching <_switchpercent) then
            {
            _building animate ["Lights_1",1];
                if(_switching2 <_switchpercent) then
                {
                _building animate ["Lights_2",1];
                };
            sleep 0.1;//REQUIRED
            };
        };
        //flicker lights off (for houses with glowing windows only) Runs after all other light sources have been switched on.
        fnc_lightfail={
        _building = _this select 0 select 0;
     
            if(_switching>_switchpercent)then
            {
            _animlightpoint = nearestObject [_building, "#lightpoint"];
                for "_s" from 1 to 5 do {
                    if(_s%2==0)then
                    {
                    _brightness=0;
                        for "_l" from 1 to 2 do {
                        _building animate [format ["Lights_%1",_l],0];
                        };
                    }
                    else
                    {
                    _brightness=0.01;
                        for "_l" from 1 to 2 do {
                        _building animate [format ["Lights_%1",_l],1];
                        };
                    };
                _animlightpoint setLightBrightness _brightness;
                _sleeptime=(random 100)/800;
                //_sleeptime=_sleeptime/500;
                sleep _sleeptime;
                };
                for "_l" from 1 to 2 do {
                _building animate [format ["Lights_%1",_l],0];
                };
            _animlightpoint setLightBrightness 0;
            //hint format ["Failing light for:%1 | Last Sleeptime:%2",_building,_sleeptime];
            sleep 6;
            };
        };
        //Create a lightpoint when called
        //eg. [_indColour,0.01,[3, 3, 3],[_x],0] call fnc_lightpoint;
        // array is [colour array,brightness,ambience array,this building / house object, run check to see if window lit first(for houses only)]
        fnc_lightpoint={
        _building = _this select 3 select 0;
        _doCheck =  _this select 4;
        _runfunc=true;
     
        if(_doCheck==1&&_building animationPhase "Lights_1"<1)then{
        _runfunc=false;
        //hint format ["Do Check:%1 | Light Phase:%2",_doCheck,_building animationPhase "Lights_1"];
        //sleep 0.5;
        };
            if(_runfunc)then
            {
            _lightColour = _this select 0;
            _lightBrightness = _this select 1;
            _lightAmbient = _this select 2;
            _objLightPoint = nearestObject [_building, "#lightpoint"];
            _xpos = getPos _building select 0;
            _ypos = getPos _building select 1;
            _lightposX = getPos _objLightPoint select 0;
            _lightposY = getPos _objLightPoint select 1;
            _awayx=_xpos-_lightposX;
            _awayy=_ypos-_lightposY;
                if((_awayx>1 or _awayx<-1)or(_awayy>1 or _awayy<-1))then
                {
                    if(_switching<_switchpercent)then
                    {
                    _lp = "#lightpoint" createVehicle [0,0,0];
                    _lp setLightColor _lightColour;
                    _lp setLightBrightness _lightBrightness;
                    _lp setLightAmbient _lightAmbient;
                    _lp setPos [getPos _building select 0,getPos _building select 1,-3];
                    _lp setDir getDir _building;
                    //sleep 0.5;
                    };
                }
                else
                {
                _objLightPoint setLightColor _lightColour;
                _objLightPoint setLightBrightness _lightBrightness;
                _objLightPoint setLightAmbient _lightAmbient;
                //sleep 0.5;
                };
            //hint format["X:%1 | Y:%2 | AwayX:%3 | Building:%4 | Lightpoint:%5 | Switching:%6 | ",_xpos,_ypos,_awayx,_building,_objLightPoint,_switching];
            //sleep 0.5;//for hint
            };
        }; 
    };
}