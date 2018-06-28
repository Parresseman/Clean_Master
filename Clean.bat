@echo off
::copyright p11950 bitch
set repo=%1
set env1=%2
set env2=%3
set env3=%4
set LOG=Clean_master_%TIME:~3,2%%TIME:~6,2%_%DATE:~-10,2%%DATE:~-7,2%%DATE:~-4,4%_log.txt
echo clean master version 1.6
echo ------------------------
echo ATTENTION: cette fenetre se fermera automatiquement
echo etes-vous sur de vouloir supprimer les configs ?
pause
if not exist "./Clean_master_log/" mkdir .\Clean_master_log
>./Clean_master_log/%LOG% (
echo clean master version 1.6
echo ------------------------
echo [%DATE% - %TIME%] Demarrage du programme..
)
::@echo on
>>./Clean_master_log/%LOG% 2>&1 (
if %repo% == Depl call :Deplo
if %repo% == ALL call :all
if %env1% == true call :Prod1 
if %env2% == true call :Acc1 
if %env3% == true call :Int1 
)
echo [%DATE% - %TIME%] fin du programme >>./Clean_master_log/%LOG%
exit
:Prod1
echo selection du dossier
cd ./PROD/SolvencyII/%repo%/branches/groupe1/RUN1
echo %cd%
del /s *.xml
cd C:/SVN
echo %cd%
goto :eof
:Acc1
echo selection du dossier
cd ./ACC/SolvencyII/%repo%/branches/groupe1/RUN1
echo %cd%
del /s *.xml
cd C:/SVN
echo %cd%
goto :eof
:Int1
echo selection du dossier
cd ./INT/SolvencyII/%repo%/branches/groupe1/RUN1
echo %cd%
del /s *.xml
cd C:/SVN
echo %cd%
goto :eof
:all
if %env1% == true call :Prod2
if %env2% == true call :Acc2
if %env3% == true call :Int2
echo [%DATE% - %TIME%] fin du programme
exit
:Prod2
echo selection du dossier
cd ./PROD/SolvencyII/BE_VIE/branches/groupe1/RUN1
echo %cd%
del /s *.xml
cd C:/SVN
echo %cd%
echo selection du dossier
cd ./PROD/SolvencyII/BE_VIE_ACT/branches/groupe1/RUN1
echo %cd%
del /s *.xml
cd C:/SVN
echo %cd%
echo selection du dossier
cd ./PROD/SolvencyII/BE_VIE_ACT_1000SIM/branches/groupe1/RUN1
echo %cd%
del /s *.xml
cd C:/SVN
echo %cd%
echo selection du dossier
cd ./PROD/SolvencyII/BE_VIE_ACT_NOVA/branches/groupe1/RUN1
echo %cd%
del /s *.xml
cd C:/SVN
echo %cd%
echo selection du dossier
cd ./PROD/SolvencyII/BE_VIE_ACT_NOVA_1000SIM/branches/groupe1/RUN1
echo %cd%
del /s *.xml
cd C:/SVN
echo %cd%
echo selection du dossier
cd ./PROD/SolvencyII/BE_VIE_BLANK_RUN/branches/groupe1/RUN1
echo %cd%
del /s *.xml
cd C:/SVN
echo %cd%
echo selection du dossier
cd ./PROD/SolvencyII/BE_VIE_CBG/branches/groupe1/RUN1
echo %cd%
del /s *.xml
cd C:/SVN
echo %cd%
echo selection du dossier
cd ./PROD/SolvencyII/BE_VIE_CBG_1000SIM/branches/groupe1/RUN1
echo %cd%
del /s *.xml
cd C:/SVN
echo %cd%
echo selection du dossier
cd ./PROD/SolvencyII/BE_VIE_CBG_NOVA/branches/groupe1/RUN1
echo %cd%
del /s *.xml
cd C:/SVN
echo %cd%
echo selection du dossier
cd ./PROD/SolvencyII/BE_VIE_CBG_NOVA_1000SIM/branches/groupe1/RUN1
echo %cd%
del /s *.xml
cd C:/SVN
echo %cd%
echo selection du dossier
cd ./PROD/SolvencyII/BE_VIE_NOVA/branches/groupe1/RUN1
echo %cd%
del /s *.xml
cd C:/SVN
echo %cd%
echo selection du dossier
cd ./PROD/SolvencyII/CALC_EPIFP_CBG/branches/groupe1/RUN1
echo %cd%
del /s *.xml
cd C:/SVN
echo %cd%
echo selection du dossier
cd ./PROD/SolvencyII/CALC_EPIFP_PSGL/branches/groupe1/RUN1
echo %cd%
del /s *.xml
cd C:/SVN
echo %cd%
echo selection du dossier
cd ./PROD/SolvencyII/LAT_BEGAAP/branches/groupe1/RUN1
echo %cd%
del /s *.xml
cd C:/SVN
echo %cd%
echo selection du dossier
cd ./PROD/SolvencyII/LAT_IFRS/branches/groupe1/RUN1
echo %cd%
del /s *.xml
cd C:/SVN
echo %cd%
echo selection du dossier
cd ./PROD/SolvencyII/RENTES_DC/branches/groupe1/RUN1
echo %cd%
del /s *.xml
cd C:/SVN
echo %cd%
echo selection du dossier
cd ./PROD/SolvencyII/SCR_PROD_ACT/branches/groupe1/RUN1
echo %cd%
del /s *.xml
cd C:/SVN
echo %cd%
goto :eof
:Acc2
echo selection du dossier
cd ./ACC/SolvencyII/BE_VIE/branches/groupe1/RUN1
echo %cd%
del /s *.xml
cd C:/SVN
echo %cd%
echo selection du dossier
cd ./ACC/SolvencyII/BE_VIE_ACT/branches/groupe1/RUN1
echo %cd%
del /s *.xml
cd C:/SVN
echo %cd%
echo selection du dossier
cd ./ACC/SolvencyII/BE_VIE_ACT_1000SIM/branches/groupe1/RUN1
echo %cd%
del /s *.xml
cd C:/SVN
echo %cd%
echo selection du dossier
cd ./ACC/SolvencyII/BE_VIE_ACT_NOVA/branches/groupe1/RUN1
echo %cd%
del /s *.xml
cd C:/SVN
echo %cd%
echo selection du dossier
cd ./ACC/SolvencyII/BE_VIE_ACT_NOVA_1000SIM/branches/groupe1/RUN1
echo %cd%
del /s *.xml
cd C:/SVN
echo %cd%
echo selection du dossier
cd ./ACC/SolvencyII/BE_VIE_BLANK_RUN/branches/groupe1/RUN1
echo %cd%
del /s *.xml
cd C:/SVN
echo %cd%
echo selection du dossier
cd ./ACC/SolvencyII/BE_VIE_CBG/branches/groupe1/RUN1
echo %cd%
del /s *.xml
cd C:/SVN
echo %cd%
echo selection du dossier
cd ./ACC/SolvencyII/BE_VIE_CBG_1000SIM/branches/groupe1/RUN1
echo %cd%
del /s *.xml
cd C:/SVN
echo %cd%
echo selection du dossier
cd ./ACC/SolvencyII/BE_VIE_CBG_NOVA/branches/groupe1/RUN1
echo %cd%
del /s *.xml
cd C:/SVN
echo %cd%
echo selection du dossier
cd ./ACC/SolvencyII/BE_VIE_CBG_NOVA_1000SIM/branches/groupe1/RUN1
echo %cd%
del /s *.xml
cd C:/SVN
echo %cd%
echo selection du dossier
cd ./ACC/SolvencyII/BE_VIE_NOVA/branches/groupe1/RUN1
echo %cd%
del /s *.xml
cd C:/SVN
echo %cd%
echo selection du dossier
cd ./ACC/SolvencyII/CALC_EPIFP_CBG/branches/groupe1/RUN1
echo %cd%
del /s *.xml
cd C:/SVN
echo %cd%
echo selection du dossier
cd ./ACC/SolvencyII/CALC_EPIFP_PSGL/branches/groupe1/RUN1
echo %cd%
del /s *.xml
cd C:/SVN
echo %cd%
echo selection du dossier
cd ./ACC/SolvencyII/LAT_BEGAAP/branches/groupe1/RUN1
echo %cd%
del /s *.xml
cd C:/SVN
echo %cd%
echo selection du dossier
cd ./ACC/SolvencyII/LAT_IFRS/branches/groupe1/RUN1
echo %cd%
del /s *.xml
cd C:/SVN
echo %cd%
echo selection du dossier
cd ./ACC/SolvencyII/RENTES_DC/branches/groupe1/RUN1
echo %cd%
del /s *.xml
cd C:/SVN
echo %cd%
echo selection du dossier
cd ./ACC/SolvencyII/SCR_ACC_ACT/branches/groupe1/RUN1
echo %cd%
del /s *.xml
cd C:/SVN
echo %cd%
goto :eof
:Int2
echo selection du dossier
cd ./INT/SolvencyII/BE_VIE/branches/groupe1/RUN1
echo %cd%
del /s *.xml
cd C:/SVN
echo %cd%
echo selection du dossier
cd ./INT/SolvencyII/BE_VIE_ACT/branches/groupe1/RUN1
echo %cd%
del /s *.xml
cd C:/SVN
echo %cd%
echo selection du dossier
cd ./INT/SolvencyII/BE_VIE_ACT_1000SIM/branches/groupe1/RUN1
echo %cd%
del /s *.xml
cd C:/SVN
echo %cd%
echo selection du dossier
cd ./INT/SolvencyII/BE_VIE_ACT_NOVA/branches/groupe1/RUN1
echo %cd%
del /s *.xml
cd C:/SVN
echo %cd%
echo selection du dossier
cd ./INT/SolvencyII/BE_VIE_ACT_NOVA_1000SIM/branches/groupe1/RUN1
echo %cd%
del /s *.xml
cd C:/SVN
echo %cd%
echo selection du dossier
cd ./INT/SolvencyII/BE_VIE_BLANK_RUN/branches/groupe1/RUN1
echo %cd%
del /s *.xml
cd C:/SVN
echo %cd%
echo selection du dossier
cd ./INT/SolvencyII/BE_VIE_CBG/branches/groupe1/RUN1
echo %cd%
del /s *.xml
cd C:/SVN
echo %cd%
echo selection du dossier
cd ./INT/SolvencyII/BE_VIE_CBG_1000SIM/branches/groupe1/RUN1
echo %cd%
del /s *.xml
cd C:/SVN
echo %cd%
echo selection du dossier
cd ./INT/SolvencyII/BE_VIE_CBG_NOVA/branches/groupe1/RUN1
echo %cd%
del /s *.xml
cd C:/SVN
echo %cd%
echo selection du dossier
cd ./INT/SolvencyII/BE_VIE_CBG_NOVA_1000SIM/branches/groupe1/RUN1
echo %cd%
del /s *.xml
cd C:/SVN
echo %cd%
echo selection du dossier
cd ./INT/SolvencyII/BE_VIE_NOVA/branches/groupe1/RUN1
echo %cd%
del /s *.xml
cd C:/SVN
echo %cd%
echo selection du dossier
cd ./INT/SolvencyII/CALC_EPIFP_CBG/branches/groupe1/RUN1
echo %cd%
del /s *.xml
cd C:/SVN
echo %cd%
echo selection du dossier
cd ./INT/SolvencyII/CALC_EPIFP_PSGL/branches/groupe1/RUN1
echo %cd%
del /s *.xml
cd C:/SVN
echo %cd%
echo selection du dossier
cd ./INT/SolvencyII/LAT_BEGAAP/branches/groupe1/RUN1
echo %cd%
del /s *.xml
cd C:/SVN
echo %cd%
echo selection du dossier
cd ./INT/SolvencyII/LAT_IFRS/branches/groupe1/RUN1
echo %cd%
del /s *.xml
cd C:/SVN
echo %cd%
echo selection du dossier
cd ./INT/SolvencyII/RENTES_DC/branches/groupe1/RUN1
echo %cd%
del /s *.xml
cd C:/SVN
echo %cd%
echo selection du dossier
cd ./INT/SolvencyII/SCR_INT_ACT/branches/groupe1/RUN1
echo %cd%
del /s *.xml
cd C:/SVN
echo %cd%
goto :eof
:Deplo
set %%s=BE_VIE
set %%g=s01
set %%t=A
echo copy in progress...
ping localhost -n 3 >nul
if %env1% == 1 call :ProdD
if %env2% == 1 call :AccD 
if %env3% == 1 call :IntD
echo [%DATE% - %TIME%] fin du programme
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
