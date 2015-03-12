/*** Convert to array ***/
_str="1234efg890";
_array=[_str] call KRON_StrtoArray;
_arr1=format['StrtoArray: ["%1"] => %2',_str,_array];		// returns ["1","2","3","4","e","f","g","8","9","0"]


/*** String length ***/
_str="abcdefg";
_len=[_str] call KRON_StrLen;
_len1=format['StrLen: ["%1"] => %2',_str,_len];	// returns '7'


/*** Get left part of string ***/
_str="1234567890";
_len=3;
_left=[_str,_len] call KRON_StrLeft;
_left1=format['StrLeft: ["%1",%2] => "%3"',_str,_len,_left];		// returns '123'


/*** Get right part of string ***/
_str="1234567890";
_len=5;
_right=[_str,_len] call KRON_StrRight;
_right1=format['StrRight: ["%1",%2] => "%3"',_str,_len,_right];		// returns '67890'



/*** Get Substring ***/
_str="1234567890";
_pos=3;
_len=3;
_substr=[_str,_pos,_len] call KRON_StrMid;
_mid1=format['StrMid: ["%1",%2,%3] => "%4"',_str,_pos,_len,_substr];	// returns '345'

_str="1234567890";
_pos=4;
_substr=[_str,_pos] call KRON_StrMid;
_mid2=format['StrMid: ["%1",%2] => "%3"',_str,_pos,_substr];	// returns '567890'


/*** Test for string ***/
_str="1234567890";
_ins="345";
_found=[_str,_ins] call KRON_StrInStr;
_instr1=format['StrInStr: ["%1","%2"] => %3',_str,_ins,_found];	// returns 'true'

_str="1234567890";
_ins="345";
_found=[_str,_ins] call KRON_StrIndex;
_instr2=format['StrIndex: ["%1","%2"] => %3',_str,_ins,_found];	// returns 2



/*** Convert to uppercase ***/
_str="abc123XYZ";
_ucase=[_str] call KRON_StrUpper;
_upper=format['StrUpper: ["%1"] => "%2"',_str,_ucase];		// returns 'ABC123XYZ'

_str="abc123XYZ";
_lcase=[_str] call KRON_StrLower;
_lower=format['StrLower: ["%1"] => "%2"',_str,_lcase];		// returns 'abc123xyz'


/*** Read flag ***/
_arr=[this,1,"nogo",true];
_arg=[_arr,"NOGO"] call KRON_FindFlag;
_flg=format['FindFlag: [[this,1,"nogo",true],"NOGO"] => "%1"',_arg];		// returns true


/*** Read arguments ***/
_arr=[this,1,"left:100","right:200"];
_arg=parseNumber([_arr,"Left"] call KRON_getArg);
_arg1=format['getArg: [[this,1,"left:100","right:200"],"Left"] => "%2"',_str,_arg];		// returns '100'

_arr=[this,1,"left:100","right:200"];
_arg=parseNumber([_arr,"Right"] call KRON_getArg);
_arg2=format['getArg: [[this,1,"left:100","right:200"],"Right"] => "%2"',_str,_arg];		// returns '200'


/*** Compare ***/
_str1="abc";
_str2="bde";
_cmp=[_str1,_str2] call KRON_Compare;
_cmp1=format['Compare: ["%1","%2"] => "%3"',_str1,_str2,_cmp];		// returns -1


/*** Sort array***/
_arr=["x","aaa","100","abc"];
_srt=[_arr] call KRON_ArraySort;
_srt1=format['ArraySort: [%1] => %2',_arr,_srt];		// returns ["100","aaa","abc","x"]

_arr=["x","aaa","100","abc"];
_srt=[_arr,"desc"] call KRON_ArraySort;
_srt2=format['ArraySort: [%1,"desc"] => %2',_arr,_srt];		// returns ["x","abc","aaa","100"]

_arr=[["Jim",300,false],["Joe",100,false],["Jack",200,true]];
_srt=[_arr] call KRON_ArraySort;
_srt3=format['ArraySort: [[%1]] => %2',_arr,_srt];				// returns [["Jack",200,true],["Jim",300,false],["Joe",100,false]]

_arr=[["Jim",300,false],["Joe",100,false],["Jack",200,true]];
_srt=[_arr,1,"desc"] call KRON_ArraySort;
_srt4=format['ArraySort: [[%1],1,"desc"] => %2',_arr,_srt];				// returns [["Jim",300,false],["Jack",200,true],["Joe",100,false]]

/*** Output results ***/
hintc format['%1\n%2\n%3\n%4\n%5\n%6\n%7\n%8\n%9\n%10\n%11\n%12\n%13\n%14\n%15\n%16\n%17\n%18',_arr1,_len1,_left1,_right1,_mid1,_mid2,_instr1,_instr2,_upper,_lower,_flg,_arg1,_arg2,_cmp1,_srt1,_srt2,_srt3,_srt4];
