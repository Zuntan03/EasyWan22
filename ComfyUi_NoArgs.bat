@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0EasyTools
set GIT_SET_PATH=%EASY_TOOLS%\Git\Git_SetPath.bat
set PYTHON_ACTIVATE=%EASY_TOOLS%\Python\Python_Activate.bat

if not exist %~dp0ComfyUI\venv\ (
	echo call %~dp0Update.bat
	call %~dp0Update.bat
)
if not exist %~dp0ComfyUI\venv\ (
	echo "[Error] %~dp0ComfyUI\venv\ が見つかりません。"
	pause & exit /b 1
)

call %GIT_SET_PATH%
if %ERRORLEVEL% neq 0 ( exit /b 1 )

pushd %~dp0ComfyUI

call %PYTHON_ACTIVATE%
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM Cuda 2.6.0 以降の Ultratics Error 回避
echo set TORCH_FORCE_NO_WEIGHTS_ONLY_LOAD=1
set TORCH_FORCE_NO_WEIGHTS_ONLY_LOAD=1

echo python main.py %*
python main.py %*
if %ERRORLEVEL% neq 0 ( pause & popd & exit /b 1 )

popd rem %~dp0ComfyUI
