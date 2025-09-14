@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set CIVITAI_MODEL_DOWNLOAD_UNZIP=%EASY_TOOLS%\Civitai\Civitai_ModelDownloadUnzip.bat
pushd %~dp0..\..\..\ComfyUI\models\ultralytics

@REM https://civitai.com/models/334668?modelVersionId=465360
call %CIVITAI_MODEL_DOWNLOAD_UNZIP% segm\ PitEyeDetailer-v2-seg.pt 334668 465360
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\ComfyUI\models\ultralytics
