move dayz_server.pbo "F:\arma 2 operation arrowhead\@DayZUnleashedServer\addons"
del /f /q dayz_server.pbo

move dayz_1.chernarus.pbo "F:\arma 2 operation arrowhead\MPMissions"
move dayz_1.napf.pbo "F:\arma 2 operation arrowhead\MPMissions"
move dayz_1.takistan.pbo "F:\arma 2 operation arrowhead\MPMissions"
move dayz_1.utes.pbo "F:\arma 2 operation arrowhead\MPMissions"
move dayz_1.zargabad.pbo "F:\arma 2 operation arrowhead\MPMissions"
move dayz_1_spec.napf.pbo "F:\arma 2 operation arrowhead\MPMissions"

copy *.pbo "C:\arma 2 operation arrowhead client\@DayZUnleashed\Addons"

copy *.pbo E:\dev_unleashedclient\addons\client

move *.pbo "F:\arma 2 operation arrowhead\@DayZUnleashed\Addons"

copy ..\..\DayZUnleashed_Hive_working\Hive\Binaries\HiveExt.dll "F:\arma 2 operation arrowhead\@DayZUnleashedServer"
copy ..\..\DayZUnleashed_Hive_working\Hive\Binaries\DatabaseMySql.dll "F:\arma 2 operation arrowhead"
