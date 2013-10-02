diag_log("UPVC: Decreasing player variables.");
/*
_result1 = [player,-20,1] call player_variableChange; //1,engineer:2,hunter:3,medic:4,soldier
_result2 = [player,-20,2] call player_variableChange; //1,engineer:2,hunter:3,medic:4,soldier
_result3 = [player,-20,3] call player_variableChange; //1,engineer:2,hunter:3,medic:4,soldier
_result4 = [player,-20,4] call player_variableChange; //1,engineer:2,hunter:3,medic:4,soldier
*/
_change1= [player,"Engineer",-10] call DZU_fnc_setVariable;
_change2= [player,"Hunting",-10] call DZU_fnc_setVariable;
_change3= [player,"Medical",-10] call DZU_fnc_setVariable;
_change4= [player,"Combat",-10] call DZU_fnc_setVariable;
_change5= [player,"Survival",-10] call DZU_fnc_setVariable;
_change6= [player,"Experience",-10] call DZU_fnc_setVariable;
_change7= [player,"Dogtags",-10] call DZU_fnc_setVariable;

diag_log("UPVC: Engineer change: " + str(_change1));
diag_log("UPVC: Hunting change: " + str(_change2));
diag_log("UPVC: Medical change: " + str(_change3));
diag_log("UPVC: Combat change: " + str(_change4));
diag_log("UPVC: Survival change: " + str(_change5));
diag_log("UPVC: Experience change: " + str(_change6));
diag_log("UPVC: Dogtags change: " + str(_change7));

