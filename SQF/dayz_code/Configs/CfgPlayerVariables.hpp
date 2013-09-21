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
    class default{  
      id=0;         //number:
      desc="";      //  text: Friendly description to show player 
      load=0;       //  bool: should DZU_fnc_loadVaribles load this?
      hide=0;       //  bool: listing varibles in a UI should this be shown?
      global=0;     //  bool: _obj setvarible[_somthing,_something,_this];
      vardefault=1;    //   var: _obj setvarible[_somthing,_this,_something];  
      varname="";   //  text: _obj setvarible[_this,_somthing,_something]; 
      vartype="";   //  text: "array","number",text,"object","raw"
      varmin=1;     //  read: depends on type: array affects size, number affects limit, text affects length, object is ignored, raw is ignored.    
      varmax=100;      //  read: depends on type: array affects size, number affects limit, text affects length, object is ignored, raw is ignored. 
      limit=0;      //  read: depends on type: array affects number of items, number affects max change, text affects length, object is ignored, raw is ignored.
        
    };
    class varEngineer:default {
         load=1;
           id=1;
         desc="Engineering";
      varname="estot"; 
      vartype="number";
    };    
    class varHunting:default{
         load=1;        
           id=2;
         desc="Hunting";
      varname="hstot"; 
      vartype="number";
    };
    class varMedical:default{
         load=1;
           id=3;
         desc="Medical Knowledge";
      varname="mstot";  
      vartype="number"; 
    };
    class varCombat:default{
         load=1;
           id=4;
         desc="Combat Training";
      varname="sstot"; 
      vartype="number";
    };
    class varSneaking:default{
         load=1;
      id=5;
      desc="Sneaking";
      varname="vSS"; 
      vartype="number";
    };
    class varExp:default{
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
    class varTags:default{
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