@echo off
REM # Path to the mission folder
set DATETIME=%date:~-4%_%date:~3,2%_%date:~0,2%-%time:~0,2%-%time:~3,2%-%time:~6,2%
SET NAME=exile.malden
SET INPUT="%USERPROFILE%\Documents\Arma 3 - Other Profiles\Remasters\missions\exile.malden"

REM # Path and name you want the PBO to be
SET OUTPUT="%USERPROFILE%\Documents\Arma 3 - Other Profiles\Remasters\missions\exile.malden.pbo"

REM # Path you installed PBOConsole.exe
SET PBOMANAGER="%PROGRAMFILES%\PBO Manager v.1.4 beta\PBOConsole.exe"
move %OUTPUT% %NAME%.pbo.%DATETIME%

echo "Backed up old pbo to %NAME%.pbo.%DATETIME%. Starting build at %DATETIME%" > %NAME%.build.log
REM # Compile PBO
echo "building PBO at %DATETIME%"
%PBOMANAGER% -pack %INPUT% %OUTPUT% >> %NAME%.build.log

REM # Commit to git
echo "Commiting to git"
git add %INPUT%\* >> %NAME%.build.log
git add %OUTPUT% >> %NAME%.build.log
git add %NAME%.pbo.%DATETIME% >> %NAME%.build.log
git commit * -m "%date% - %time%" >> %NAME%.build.log
git push >> %NAME%.build.log


REM # Deploy to server
Echo "Deploying to %NAME%.pbo server"
rem powershell ssh exile@arma3.gerry.ninja "~/Arma3 deploy ; exit" >> %NAME%.build.log

echo "End build %date% - %time%" >> %NAME%.build.log