set path=%~p0
set path=%path:~0,-1%
For %%A in ("%path%") do (Set CurrDirName=%%~nxA)

set PROJECT_FILE="%~dp0\%CurrDirName%.uproject"

"D:\Epic Games\UE_5.0\Engine\Binaries\Win64\UnrealEditor.exe" %PROJECT_FILE% -tracehost=127.0.0.1 -trace=gpu,cpu,frame,log,bookmark,loadtime,file,stats,counters -statnamedevents