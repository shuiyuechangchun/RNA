@Echo Off
SetLocal EnableExtensions EnableDelayedExpansion

REM     Batch   Windows(CR LF) ANSI


Set PROJECT_DIR=%1
Set LOCAL_DIR=%cd%
Set BATCH_DIR=%~dp0


Cls
echo ����Ŀ¼���·����!PROJECT_DIR!
echo ����Ŀ¼����·����!LOCAL_DIR!\!PROJECT_DIR!
echo ����Ŀ¼����·����!LOCAL_DIR!
echo ��ǰ�������·����!BATCH_DIR!

Pause


Cls
echo ����Ŀ¼����·����!LOCAL_DIR!
Dir
Pause

Pushd !PROJECT_DIR!
Cls
echo ����Ŀ¼���·����!PROJECT_DIR!
Dir
Pause

::Move /y fakefs !label! 1>Nul 2>Nul
::Del /s /q /f 1.exe 1>Nul 2>Nul
::Del /s /q /f 2.txt 1>Nul 2>Nul


Popd
Cls
echo ����Ŀ¼����·����!LOCAL_DIR!
Dir
Pause
Exit