/*
This class contains the player varibles for unleashed, varibles are loaded from this list onto the player. 
These varibles should only be manipulated by the DZU_fnc_XXXX functions
                                                                         
    _skillMedical = [player,"Medical"] call DZU_fnc_getVariable;
                                                                        
Config          _config = configFile >> "CfgPlayerVariables";    
skill id       _VaribleID = getNumber(_config >> _VAR >> "id");
default value _defvalue = getNumber(_config >> _VAR >> "def");
varible cap        _cap = getNumber(_config >> _VAR >> "cap");
increase limit   _limit = getNumber(_config >> _VAR >> "limit");
Description       _desc = getText(_config >> _VAR >> "desc");
VaribleName        _var = getText(_config >> _VAR >> "pVar");

*/

class CfgPlayerVariables{
    class default {
      desc="default variable skill";      //  text: Friendly description 
      load=0;           //  bool: should DZU_fnc_loadVaribles load this?
      hide=0;           //  bool: listing varibles in a UI should this be shown?
      global=0;         //  bool: _obj setvarible[_somthing,_something,_this];
      vardefault=1;     //   var: _obj setvarible[_somthing,_this,_something];  
      varname="";       //  text: _obj setvarible[_this,_somthing,_something];
      varmin=1;         //  read: depends on type: array affects size, number affects limit, text affects length, object is ignored, raw is ignored.    
      varmax=100;       //  read: depends on type: array affects size, number affects limit, text affects length, object is ignored, raw is ignored. 
      limit=0;          //  read: depends on type: array affects number of items, number affects max change, text affects length, object is ignored, raw is ignored.
      alwaysSave=0;     //  force this variable to save every time it changes?
    };
    class Engineer : default {
         load=1;
         desc="Engineering";
      varname="vEN";
    };    
    class Hunting : default {
         load=1;
         desc="Hunting";
      varname="vHN";
    };
    class Medical : default {
         load=1;
         desc="Medical Knowledge";
      varname="vMK";
    };
    class Combat : default {
         load=1;
         desc="Combat Training";
      varname="vCT";
    };
    class Survival : default {
         load=1;
      desc="Survival";
      varname="vSS";
    };
    class Experience : default {
         load=1;
      vardefault=0;
         desc="Experience  Points";
      varname="vXP";
      varmin=0;   
      varmax=1000;
    };
    class Dogtags : default {
               load=1;   
              limit=1;
         vardefault=0;
             varmin=0;
      desc="Dog Tags";
        varname="vTC";
    };    

    class biocon : default {
         load=0;
      vardefault=0;
         desc="Contamination";
      varname="vBC";
      varmin=0;
      varmax=1000;
    };
    class radcon : default {
         load=0;
      vardefault=0;
         desc="Radiation";
      varname="vRC";
      varmin=0;
      varmax=1000;
    };
    class blood : default {
         load=0;
      vardefault=12000;
         desc="Blood Level";
      varname="vBL";
      varmin=0;
      varmax=12000;
    };
    class biotics : default {
            load=1;
      vardefault=0;
         desc="Antibiotics";
      varname="vAB";
       varmin=0;
      varmax= 12000;
    };
    class septic : default {
         load=0;
      vardefault=0;
         desc="Septic Level";
      varname="vSL";
      varmin=0;
      varmax=12000;
    };
};