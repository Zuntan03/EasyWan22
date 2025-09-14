@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set CIVITAI_MODEL_DOWNLOAD_UNZIP=%EASY_TOOLS%\Civitai\Civitai_ModelDownloadUnzip.bat
pushd %~dp0..\..\..\ComfyUI\models\ultralytics

@REM https://civitai.com/models/329458?modelVersionId=1780243
call %CIVITAI_MODEL_DOWNLOAD_UNZIP% segm\ PitHandDetailer-v2-Test-v9c.pt 329458 1780243
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\ComfyUI\models\ultralytics
