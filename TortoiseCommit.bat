@echo off
::/path:"http://ethnrw0140.ethias.adms:9881/svn/modetgeri_b/
set repo=%1
set env=%2
set upd=%3
set Rev=%4
if %Rev% == 1 call :Revert
if %upd% == 1 call :Update
if %repo% == ALL (
	start TortoiseProc.exe /command:commit /path:"./%env%/SolvencyII/" /logmsg:"Commit from Clean_master:"
) else (
	start TortoiseProc.exe /command:commit /path:"./%env%/SolvencyII/%repo%/" /logmsg:"Commit from Clean_master:"
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
start TortoiseProc.exe /command:revert /path:"./%env%/SolvencyII/%repo%"
exit
