@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\EasyTools
set EASY_COMFYUI=%EASY_TOOLS%\ComfyUi

echo "ComfyUI を最新の Nightly ビルドに切り替えます。"
echo "元に戻す場合は、ComfyUi-VersionLock.bat を実行してください。"
echo.
echo "Switching ComfyUI to the latest Nightly build."
echo "To revert, run ComfyUi-VersionLock.bat."
echo.
pause

call "%~dp0ComfyUi-VersionUnlock.bat"

if exist "%EASY_COMFYUI%\ComfyUi_Version.txt" ( del "%EASY_COMFYUI%\ComfyUi_Version.txt" > NUL )
if exist "%EASY_COMFYUI%\ComfyUiManager_Version.txt" ( del "%EASY_COMFYUI%\ComfyUiManager_Version.txt" > NUL )

call "%~dp0..\Update.bat"
