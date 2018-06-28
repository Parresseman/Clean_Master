@echo off
::/path:"http://ethnrw0140.ethias.adms:9881/svn/modetgeri_b/
set repo=%1
set env=%2
set upd=%3
set Rev=%4
set log=%5
set RevAll=%6
if %log% == 1 call :log
if %Rev% == 1 call :Revert
if %upd% == 1 call :Update
if %repo% == ALL (
	start TortoiseProc.exe /command:commit /path:"./%env%/SolvencyII/" /logmsg:"Commit from Clean_master: %USERNAME%"
) else (
	start TortoiseProc.exe /command:commit /path:"./%env%/SolvencyII/%repo%/" /logmsg:"Commit from Clean_master: %USERNAME%"
)
exit
:Update
if %repo% == ALL (
	start TortoiseProc.exe /command:update /path:"./%env%/SolvencyII/"
) else (
	start TortoiseProc.exe /command:update /path:"./%env%/SolvencyII/%repo%/"
)
exit
:Revert
if %env% == ALL (
	if %RevAll% == 1 start TortoiseProc.exe /command:revert /path:"./PROD/SolvencyII/"
	if %RevAll% == 2 start TortoiseProc.exe /command:revert /path:"./ACC/SolvencyII/"
	if %RevAll% == 3 start TortoiseProc.exe /command:revert /path:"./INT/SolvencyII/"
) else (
	start TortoiseProc.exe /command:revert /path:"./%env%/SolvencyII/%repo%"
)
exit
:log
if not exist "./Clean_master_log/" mkdir .\Clean_master_log
>./Clean_master_log/Clean_master_Migration_%TIME:~3,2%%TIME:~6,2%_%DATE:~-10,2%%DATE:~-7,2%%DATE:~-4,4%_log.txt (
echo clean master version 1.6 - Migration
echo ------------------------------------
echo execution: %USERNAME% [%DATE% - %TIME%]
echo.
echo %repo% Migrate to %env%
)
exit
