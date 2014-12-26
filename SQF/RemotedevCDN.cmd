del /f /q dayz_server.pbo
move *.pbo "E:\dev_unleashedclient\addons\client"
start /wait DayZUnleashedFileHash generatehash

c:\windows\system32\ftp -i -s:key.ftp