@echo off
For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%c-%%a-%%b)
For /f "tokens=1-2 delims=/:" %%a in ('time /t') do (set mytime=%%a%%b)
set armaversion=version = \"0.98-Devbuild-%mydate%_%mytime%\";
echo %armaversion%
sd -i "s/version.*/%armaversion%/g" .\dayz\config.cpp
sd -i "s/version.*/%armaversion%/g" .\dayz_anim\config.cpp
sd -i "s/version.*/%armaversion%/g" .\dayz_code\config.cpp
sd -i "s/version.*/%armaversion%/g" .\dayz_communityassets\config.cpp
sd -i "s/version.*/%armaversion%/g" .\dayz_equip\config.cpp
sd -i "s/version.*/%armaversion%/g" .\dayz_server\config.cpp
sd -i "s/version.*/%armaversion%/g" .\sayz_sfx\config.cpp
sd -i "s/version.*/%armaversion%/g" .\dayz_weapons\config.cpp
sd -i "s/version.*/%armaversion%/g" .\ew_wrecks_unleashed\config.cpp
sd -i "s/version.*/%armaversion%/g" .\Unleashed_addons\activeLoot\config.cpp
sd -i "s/version.*/%armaversion%/g" .\unleashed_pack\config.cpp
erase sed*