copy dayz_anim.pbo "D:\Program Files (x86)\Steam\SteamApps\common\ARMA 2 Operation Arrowhead\@DayZUnleashed\Addons"
copy dayz_code.pbo "D:\Program Files (x86)\Steam\SteamApps\common\ARMA 2 Operation Arrowhead\@DayZUnleashed\Addons"
copy dayz_communityassets.pbo "D:\Program Files (x86)\Steam\SteamApps\common\ARMA 2 Operation Arrowhead\@DayZUnleashed\Addons"
copy dayz_epoch.pbo "D:\Program Files (x86)\Steam\SteamApps\common\ARMA 2 Operation Arrowhead\@DayZUnleashed\Addons"
copy dayz_sfx.pbo "D:\Program Files (x86)\Steam\SteamApps\common\ARMA 2 Operation Arrowhead\@DayZUnleashed\Addons"
copy unleashed_pack.pbo "D:\Program Files (x86)\Steam\SteamApps\common\ARMA 2 Operation Arrowhead\@DayZUnleashed\Addons"
copy dayz.pbo "D:\Program Files (x86)\Steam\SteamApps\common\ARMA 2 Operation Arrowhead\@DayZUnleashed\Addons"
copy dayz_equip.pbo "D:\Program Files (x86)\Steam\SteamApps\common\ARMA 2 Operation Arrowhead\@DayZUnleashed\Addons"
copy dayz_vehicles.pbo "D:\Program Files (x86)\Steam\SteamApps\common\ARMA 2 Operation Arrowhead\@DayZUnleashed\Addons"
copy dayz_weapons.pbo "D:\Program Files (x86)\Steam\SteamApps\common\ARMA 2 Operation Arrowhead\@DayZUnleashed\Addons"

copy dayz_anim.pbo "E:\dev_unleashedclient\addons"
copy dayz_code.pbo "E:\dev_unleashedclient\addons"
copy dayz_communityassets.pbo "E:\dev_unleashedclient\addons"
copy dayz_epoch.pbo "E:\dev_unleashedclient\addons"
copy dayz_sfx.pbo "E:\dev_unleashedclient\addons"
copy unleashed_pack.pbo "E:\dev_unleashedclient\addons"
copy dayz.pbo "E:\dev_unleashedclient\addons"
copy dayz_equip.pbo "E:\dev_unleashedclient\addons"
copy dayz_vehicles.pbo "E:\dev_unleashedclient\addons"
copy dayz_weapons.pbo "E:\dev_unleashedclient\addons"

move dayz_anim.pbo "F:\arma 2 operation arrowhead\@DayZUnleashed\Addons"
move dayz_code.pbo "F:\arma 2 operation arrowhead\@DayZUnleashed\Addons"
move dayz_communityassets.pbo "F:\arma 2 operation arrowhead\@DayZUnleashed\Addons"
move dayz_epoch.pbo "F:\arma 2 operation arrowhead\@DayZUnleashed\Addons"
move dayz_sfx.pbo "F:\arma 2 operation arrowhead\@DayZUnleashed\Addons"
move unleashed_pack.pbo "F:\arma 2 operation arrowhead\@DayZUnleashed\Addons"
move dayz.pbo "F:\arma 2 operation arrowhead\@DayZUnleashed\Addons"
move dayz_equip.pbo "F:\arma 2 operation arrowhead\@DayZUnleashed\Addons"
move dayz_vehicles.pbo "F:\arma 2 operation arrowhead\@DayZUnleashed\Addons"
move dayz_weapons.pbo "F:\arma 2 operation arrowhead\@DayZUnleashed\Addons"
move dayz_server.pbo "F:\arma 2 operation arrowhead\@DayZUnleashedServer\addons"



copy ..\..\DayZUnleashed_Hive_working\Hive\Binaries\HiveExt.dll "F:\arma 2 operation arrowhead\@DayZUnleashedServer"
copy ..\..\DayZUnleashed_Hive_working\Hive\Binaries\DatabaseMySql.dll "F:\arma 2 operation arrowhead"

ftp -i -s:u.ftp
del /q E:\dev_unleashedclient\addons\*.pbo