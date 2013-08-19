rem "C:\Program Files (x86)\Bohemia Interactive\Tools\BinPBO Personal Edition\BinPBO.exe" [source_path [destination_path] [-WINDOW]] [-PACK|-BINARIZE [-CLEAR][-TEMP temp_path] ] [-DEBUG] [-PREFIX prefix_path] [-HELP] [-PROJECT project_path] [-SIGN privatekey_file]

"C:\Program Files (x86)\Bohemia Interactive\Tools\BinPBO Personal Edition\BinPBO.exe" D:\projects\DayZUnleashed\SQF\dayz_anim D:\Unleashed_Client\@DayZUnleashed\Addons -PACK -BINARIZE -CLEAR -TEMP I:\Temp -PREFIX dayz_anim
"C:\Program Files (x86)\Bohemia Interactive\Tools\BinPBO Personal Edition\BinPBO.exe" D:\projects\DayZUnleashed\SQF\dayz_code D:\Unleashed_Client\@DayZUnleashed\Addons -PACK -BINARIZE -CLEAR -TEMP I:\Temp -PREFIX z\addons\dayz_code
"C:\Program Files (x86)\Bohemia Interactive\Tools\BinPBO Personal Edition\BinPBO.exe" D:\projects\DayZUnleashed\SQF\dayz_communityassets D:\Unleashed_Client\@DayZUnleashed\Addons -PACK -BINARIZE -CLEAR -TEMP I:\Temp -PREFIX z\addons\dayz_communityassets

rem "Copy current sources to p drive. Without this step binPBO BINARIZE will be unable to find the rvmats and loose data"
xcopy /s/e/y "D:\projects\DayZUnleashed\SQF\dayz_epoch" p:\z\addons\dayz_epoch
"C:\Program Files (x86)\Bohemia Interactive\Tools\BinPBO Personal Edition\BinPBO.exe" p:\z\addons\dayz_epoch D:\Unleashed_Client\@DayZUnleashed\Addons -PACK -BINARIZE -CLEAR -TEMP I:\Temp -PROJECT p:\z -PREFIX z\addons\dayz_epoch

"C:\Program Files (x86)\Bohemia Interactive\Tools\BinPBO Personal Edition\BinPBO.exe" D:\projects\DayZUnleashed\SQF\dayz_server D:\Unleashed_Client\@DayZUnleashed\Addons -PACK -BINARIZE -CLEAR -TEMP I:\Temp -PREFIX z\addons\dayz_server
"C:\Program Files (x86)\Bohemia Interactive\Tools\BinPBO Personal Edition\BinPBO.exe" D:\projects\DayZUnleashed\SQF\dayz_sfx D:\Unleashed_Client\@DayZUnleashed\Addons -PACK -BINARIZE -CLEAR -TEMP I:\Temp -PREFIX dayz_sfx
"C:\Program Files (x86)\Bohemia Interactive\Tools\BinPBO Personal Edition\BinPBO.exe" D:\projects\DayZUnleashed\SQF\unleashed_pack D:\Unleashed_Client\@DayZUnleashed\Addons -PACK -BINARIZE -CLEAR -TEMP I:\Temp -PREFIX z\addons\unleashed_pack

pause