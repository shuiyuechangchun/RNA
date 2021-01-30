@Echo Off
SetLocal EnableExtensions EnableDelayedExpansion

REM     Batch   Windows(CR LF) ANSI


Set PROJECT_DIR=%1
Set LOCAL_DIR=%cd%
Set BATCH_DIR=%~dp0


Cls
echo 工程目录相对路径：!PROJECT_DIR!
echo 工程目录绝对路径：!LOCAL_DIR!\!PROJECT_DIR!
echo 工具目录绝对路径：!LOCAL_DIR!
echo 当前插件绝对路径：!BATCH_DIR!

Pause


Cls
echo 工具目录绝对路径：!LOCAL_DIR!
Dir
Pause

Pushd !PROJECT_DIR!
Cls
echo 工程目录相对路径：!PROJECT_DIR!
Dir
Pause

::Move /y fakefs !label! 1>Nul 2>Nul
::Del /s /q /f 1.exe 1>Nul 2>Nul
::Del /s /q /f 2.txt 1>Nul 2>Nul


Popd
Cls
echo 工具目录绝对路径：!LOCAL_DIR!
Dir
Pause
Exit