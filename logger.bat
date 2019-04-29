@ECHO OFF
SET /P _filename= Please enter folder:
SET _path=%~dp0
@ECHO OFF
robocopy "%_path:~0,-1%\TODO\%_filename%\textures" "%_path:~0,-1%\assets\%_filename%\textures" /L /TS /XO /MIR /LOG:%_path:~0,-1%\logs\%_filename%_textures_log.txt
if errorlevel 1 (
   echo Failure Reason Given is %errorlevel%
)
PAUSE >nul