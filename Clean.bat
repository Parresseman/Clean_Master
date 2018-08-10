@echo off
::copyright p11950 bitch
title clean master version 1.6.3
set repo=%1
set env1=%2
set env2=%3
set env3=%4
set env4=%5
set titre=clean master version 1.6.3
set Prnum=0
setlocal enabledelayedexpansion
set LOG=Clean_master_%TIME:~3,2%%TIME:~6,2%_%DATE:~-10,2%%DATE:~-7,2%%DATE:~-4,4%_log.txt
echo %titre%
echo ------------------------
echo ATTENTION: cette fenetre se fermera automatiquement
echo etes-vous sur de vouloir supprimer les configs ?
pause
if not exist "./Clean_master_log/" mkdir .\Clean_master_log
>./Clean_master_log/%LOG% (
echo %titre%
echo ------------------------
echo [%DATE% - %TIME%] Demarrage du programme..
title %titre% - !Prnum!
)
::@echo on
>>./Clean_master_log/%LOG% 2>&1 (
if %repo% == Depl call :Deplo
if %repo% == ALL call :all
if %env1% == true call :Prod1 
if %env2% == true call :Acc1 
if %env3% == true call :Int1 
echo [%DATE% - %TIME%] fin du programme
)
title %titre% - !Prnum! - Closing...
ping localhost -n 3 >nul
exit
:Prod1
echo selection du dossier
cd ./PROD/SolvencyII/%repo%/branches/groupe1/RUN1
echo %cd%
if %env4% == 1 (
	attrib +R *AGG*.xml /S
	del /s *.xml
	attrib -R *AGG*.xml /S
) else (
	del /s *.xml
	cd C:/SVN
	echo %cd%
)
goto :eof
:Acc1
echo selection du dossier
cd ./ACC/SolvencyII/%repo%/branches/groupe1/RUN1
echo %cd%
if %env4% == 1 (
	attrib +R *AGG*.xml /S
	del /s *.xml
	attrib -R *AGG*.xml /S
) else (
	del /s *.xml
	cd C:/SVN
	echo %cd%
)
goto :eof
:Int1
echo selection du dossier
cd ./INT/SolvencyII/%repo%/branches/groupe1/RUN1
echo %cd%
if %env4% == 1 (
	attrib +R *AGG*.xml /S
	del /s *.xml
	attrib -R *AGG*.xml /S
) else (
	del /s *.xml
	cd C:/SVN
	echo %cd%
)
goto :eof
:all
if %env1% == true call :Prod2
if %env2% == true call :Acc2
if %env3% == true call :Int2
echo [%DATE% - %TIME%] fin du programme
title %titre% - !Prnum! - Closing...
ping localhost -n 3 >nul
exit
:Prod2
echo selection du dossier
echo %cd%
for /d %%s in ("./PROD/SolvencyII/*") do (
	echo %%s
	cd ./PROD/SolvencyII/%%s/branches/groupe1/RUN1/
	for /d %%g in ("./*") do (
		echo %%g
		cd ./%%g/
		for /d %%t in ("./*") do (
			set /a Prnum+=1
			title %titre% - !Prnum!
			echo %%t
			cd ./%%t/
			if %env4% == 1 (
				echo ne pas toucher au AGG selectionne - exec
				attrib +R *AGG*.xml /S
				del /s *.xml
				attrib -R *AGG*.xml /S	
			) else (
				del /s *.xml
			) 
			cd..
		)
		cd..
	)
	cd C:/SVN
)
goto :eof
:Acc2
echo selection du dossier
echo %cd%
for /d %%s in ("./ACC/SolvencyII/*") do (
	echo %%s
	cd ./ACC/SolvencyII/%%s/branches/groupe1/RUN1/
	for /d %%g in ("./*") do (
		echo %%g
		cd ./%%g/
		for /d %%t in ("./*") do (
			set /a Prnum+=1
			title %titre% - !Prnum!
			echo %%t
			cd ./%%t/
			if %env4% == 1 (
				echo ne pas toucher au AGG selectionne - exec
				attrib +R *AGG*.xml /S
				del /s *.xml
				attrib -R *AGG*.xml /S	
			) else (
				del /s *.xml
			) 
			cd..
		)
		cd..
	)
	cd C:/SVN
)
goto :eof
:Int2
echo selection du dossier
echo %cd%
for /d %%s in ("./INT/SolvencyII/*") do (
	echo %%s
	cd ./INT/SolvencyII/%%s/branches/groupe1/RUN1/
	for /d %%g in ("./*") do (
		echo %%g
		cd ./%%g/
		for /d %%t in ("./*") do (
			set /a Prnum+=1
			title %titre% - !Prnum!
			echo %%t
			cd ./%%t/
			if %env4% == 1 (
				echo ne pas toucher au AGG selectionne - exec
				attrib +R *AGG*.xml /S
				del /s *.xml
				attrib -R *AGG*.xml /S	
			) else (
				del /s *.xml
			) 
			cd..
		)
		cd..
	)
	cd C:/SVN
)
goto :eof
:Deplo
::set %%s=BE_VIE
::set %%g=s01
::set %%t=A
echo copy done in JavaScript
echo now removing configuration...
ping localhost -n 3 >nul
if %env1% == 1 call :ProdD
if %env2% == 1 call :AccD 
if %env3% == 1 call :IntD
echo [%DATE% - %TIME%] fin du programme
title %titre% - !Prnum! - Closing...
ping localhost -n 3 >nul
exit
:ProdD
::@echo on
echo %cd%
for /d %%s in ("./PROD/SolvencyII/*") do (
	echo %%s
	cd ./PROD/SolvencyII/%%s/branches/groupe1/RUN1/
	for /d %%g in ("./*") do (
		echo %%g
		cd ./%%g/
		for /d %%t in ("./*") do (
			echo %%t
			set /a Prnum+=1
			title %titre% - !Prnum!
			if %%t == H (
				echo dossier H - skip
			) else (
				cd ./%%t/
				echo dossier non H - exec
				attrib +R *AGG*.xml /S
				del /s *.xml
				attrib -R *AGG*.xml /S
				cd..			
			) 
		)
		cd..
	)
	cd C:/SVN
)
goto :eof
:AccD
::@echo on
echo %cd%
for /d %%s in ("./ACC/SolvencyII/*") do (
	echo %%s
	cd ./ACC/SolvencyII/%%s/branches/groupe1/RUN1/
	for /d %%g in ("./*") do (
		echo %%g
		cd ./%%g/
		for /d %%t in ("./*") do (
			echo %%t
			set /a Prnum+=1
			title %titre% - !Prnum!
			if %%t == H (
				echo dossier H - skip
			) else (
				cd ./%%t/
				echo dossier non H - exec
				attrib +R *AGG*.xml /S
				del /s *.xml
				attrib -R *AGG*.xml /S
				cd..			
			) 
		)
		cd..
	)
	cd C:/SVN
)
goto :eof
:IntD
::@echo on
echo %cd%
for /d %%s in ("./INT/SolvencyII/*") do (
	echo %%s
	cd ./INT/SolvencyII/%%s/branches/groupe1/RUN1/
	for /d %%g in ("./*") do (
		echo %%g
		cd ./%%g/
		for /d %%t in ("./*") do (
			echo %%t
			set /a Prnum+=1
			title %titre% - !Prnum!
			if %%t == H (
				echo dossier H - skip
			) else (
				cd ./%%t/
				echo dossier non H - exec
				attrib +R *AGG*.xml /S
				del /s *.xml
				attrib -R *AGG*.xml /S
				cd..			
			) 
		)
		cd..
	)
	cd C:/SVN
)
goto :eof
