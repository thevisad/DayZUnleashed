class CfgAbility {
        class Default{ 
            description="Base skill template";
            scope=private;
            exp=0;    
            min=0;
            max=1000;
            skill[]={"Engineer","Survival","Medical","Combat"};
            class action {
                unit=0;
                title="Ability";
                script="none.sqf";
                arguments="";
                showWindow=0;
                hideOnUse=0;
                shortcut="";
                condition="(FALSE)";                
            };   
        };
};