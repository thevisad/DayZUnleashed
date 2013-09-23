/*
This class contains the player varibles for unleashed, varibles are loaded from this list onto the player. 
These varibles should only be manipulated by the DZU_fnc_XXXX functions
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
      id=0;         //number:
      desc="default variable skill";      //  text: Friendly description 
      load=0;       //  bool: should DZU_fnc_loadVaribles load this?
      hide=0;       //  bool: listing varibles in a UI should this be shown?
      global=0;     //  bool: _obj setvarible[_somthing,_something,_this];
      vardefault=1;    //   var: _obj setvarible[_somthing,_this,_something];  
      varname="";   //  text: _obj setvarible[_this,_somthing,_something]; 
      vartype="none";   //  text: "array","number",text,"object","raw","none"
      varmin=1;     //  read: depends on type: array affects size, number affects limit, text affects length, object is ignored, raw is ignored.    
      varmax=100;      //  read: depends on type: array affects size, number affects limit, text affects length, object is ignored, raw is ignored. 
      limit=0;      //  read: depends on type: array affects number of items, number affects max change, text affects length, object is ignored, raw is ignored. 
    };
    class Engineer : default {
         load=1;
           id=1;
           global=1;
         desc="Engineering";
      varname="estot"; 
      vartype="number";
    };    
    class Hunting : default {
         load=1;        
           id=2;
           global=1;
         desc="Hunting";
      varname="hstot"; 
      vartype="number";
    };
    class Medical : default {
         load=1;
           id=3;
           global=1;
         desc="Medical Knowledge";
      varname="mstot";  
      vartype="number"; 
    };
    class Combat : default {
         load=1;
           id=4;
           global=1;
         desc="Combat Training";
      varname="sstot"; 
      vartype="number";
    };
    class Sneaking : default {
         load=1;
      id=5;
           global=1;
      desc="Sneaking";
      varname="vSS"; 
      vartype="number";
    };
    class Experience : default {
         load=1;
         hide=1;
           id=6;
      vardefault=0;
         desc="Experience  Points";
      varname="vXP"; 
      vartype="number";
      varmin=0;   
      varmax=1000;
      limit=50;
    };
    class Dogtags : default {
               load=1;
               hide=1;   
              limit=1;
                 id=7;
         vardefault=0;
             varmin=0;
      desc="Dog Tags";
        varname="vTC"; 
     vartype="number";
    };
};