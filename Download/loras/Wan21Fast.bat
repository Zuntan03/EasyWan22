@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\EasyTools
set RECURSIVE_BAT_CALL=%EASY_TOOLS%\Bat\RecursiveBatCall_NoErrorCheck.bat

call %EASY_TOOLS%\Civitai\Civitai_ApiKey.bat
if %ERRORLEVEL% neq 0 ( exit /b 1 )

call "%RECURSIVE_BAT_CALL%" "%~dp0Wan21Fast"
