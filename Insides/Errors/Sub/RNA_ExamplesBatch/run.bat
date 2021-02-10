@Echo Off
SetLocal EnableExtensions EnableDelayedExpansion

REM     Batch   Windows(CR LF) ANSI

REM 接收R.N.A.EXE传入参数%1：工程目录
REM 设置变量
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
REM 打印文件夹内文件/夹
Dir
Pause

REM 切入!PROJECT_DIR!
Pushd !PROJECT_DIR!
Cls
echo 工程目录相对路径：!PROJECT_DIR!
REM 打印文件夹内文件/夹
Dir
Pause

REM 切回原路径
Popd
Cls
echo 工具目录绝对路径：!LOCAL_DIR!
REM 打印文件夹内文件/夹
Dir
Pause
Exit