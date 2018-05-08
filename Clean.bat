@echo off
::copyright p11950 bitch
set repo=%1
set env1=%2
set env2=%3
set env3=%4
echo clean master version 0.9.6
pause
if %repo% == ALL call :all
if %env1% == true call :Prod1
if %env2% == true call :Acc1
if %env3% == true call :Int1
echo fin du programme
pause
exit
:Prod1
echo selection du dossier
cd ./PROD/SolvencyII/%repo%/branches
echo %cd%
echo etes-vous sur de vouloir supprimer les configs ?
pause
del /s *.xml
cd C:/SVN
goto :eof
:Acc1
echo selection du dossier
cd ./ACC/SolvencyII/%repo%/branches
echo %cd%
echo etes-vous sur de vouloir supprimer les configs ?
pause
del /s *.xml
cd C:/SVN
goto :eof
:Int1
echo selection du dossier
cd ./INT/SolvencyII/%repo%/branches
echo %cd%
echo etes-vous sur de vouloir supprimer les configs ?
pause
del /s *.xml
cd C:/SVN
goto :eof
:all
if %env1% == true call :Prod2
if %env2% == true call :Acc2
if %env3% == true call :Int2
echo fin du programme
pause
exit
:Prod2
echo selection du dossier
cd ./PROD/SolvencyII/
echo %cd%
echo etes-vous sur de vouloir supprimer les configs ?
pause
del /s *.xml
cd C:/SVN
goto :eof
:Acc2
echo selection du dossier
cd ./ACC/SolvencyII/
echo %cd%
echo etes-vous sur de vouloir supprimer les configs ?
pause
del /s *.xml
cd C:/SVN
goto :eof
:Int2
echo selection du dossier
cd ./INT/SolvencyII/
echo %cd%
echo etes-vous sur de vouloir supprimer les configs ?
pause
del /s *.xml
cd C:/SVN
goto :eof
