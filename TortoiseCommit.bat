@echo off
::/path:"http://ethnrw0140.ethias.adms:9881/svn/modetgeri_b/
set repo=%1
set env=%2
set upd=%3
if %upd% == 1 call :Update
if %repo% == ALL (
	start TortoiseProc.exe /command:commit /path:"./%env%/SolvencyII/"
) else (
	start TortoiseProc.exe /command:commit /path:"./%env%/SolvencyII/%repo%/"
)
exit
:Update
if %repo% == ALL (
	start TortoiseProc.exe /command:update /path:"./%env%/SolvencyII/"
) else (
	start TortoiseProc.exe /command:update /path:"./%env%/SolvencyII/%repo%/"
)
exit
