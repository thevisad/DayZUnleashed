/*
This class contains the player varibles for unleashed, varibles are loaded from this list onto the player. 
These varibles should only be manipulated by the DZU_fnc_XXXX functions
Config          _config = configFile >> "CfgPlayerVariables";    
skill id       _skillID = getNumber(_config >> _VAR >> "id");
default value _defvalue = getNumber(_config >> _VAR >> "def");
varible cap        _cap = getNumber(_config >> _VAR >> "cap");
increase limit   _limit = getNumber(_config >> _VAR >> "limit");
Description       _desc = getText(_config >> _VAR >> "desc");
VaribleName        _var = getText(_config >> _VAR >> "pVar");
*/

class CfgPlayerVariables{
    class varEngineer {
      id=1;               //SkillId
      def=1;              //Default amount if null
      desc="Engineering"; //Friendly description to show player
      pVar="estot";       //Name of public varible to assign on player. 
      cap=100;            //Max Limit this varible can reach
      limit=0;            //Max per instance change that can occur with this varible
    };    
    class varHunting{
      id=2;         //SkillId
      def=1;        //Default amount if null
      desc="Hunting";
      pVar="hstot"; //Name   
      cap=100;      //Max Limit this value can go
      limit=0;      //Limit changes by X, 0=nolimit  
    };
    class varMedical{
      id=3;         //SkillId
      def=1;        //Default amount if null
      desc="Medical Knowledge";
      pVar="mstot"; //Name   
      cap=100;      //Max Limit this value can go
      limit=0;      //Limit changes by X, 0=nolimit  
    };
    class varCombat{
      id=4;         //SkillId
      def=1;        //Default amount if null
      desc="Combat Training";
      pVar="sstot"; //Name   
      cap=100;      //Max Limit this value can go
      limit=0;      //Limit changes by X, 0=nolimit  
    };
    class varSneaking{
      id=5;         //SkillId
      def=1;        //Default amount if null
      desc="Sneaking";
      pVar="vSS";   //Name   
      cap=100;      //Max Limit this value can go
      limit=0;      //Limit changes by X, 0=nolimit  
    };
    class varExp{
      hide=1;       //not user editable
      id=6;         //SkillId
      def=0;        //Default amount if null
      desc="Experience  Points";
      pVar="vXP";   //Name   
      cap=1000;     //Max Limit this value can go
      limit=50;     //Limit changes by X, 0=nolimit  
    };
    class varTags{
      hide=1;       //not user editable
      id=7;         //SkillId
      def=0;        //Default amount if null
      desc="Dog Tags";
      pVar="vTC";  //Name   
      cap=0;        //Max Limit this value can go
      limit=1;     //Limit changes by X, 0=nolimit  
    };
};