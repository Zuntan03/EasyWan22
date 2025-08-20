@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set CIVITAI_MODEL_DOWNLOAD_UNZIP=%EASY_TOOLS%\Civitai\Civitai_ModelDownloadUnzip.bat
pushd %~dp0..\..\..\ComfyUI\models\loras

@REM https://civitai.com/models/1874153?modelVersionId=2121297
call %CIVITAI_MODEL_DOWNLOAD_UNZIP% Nsfw\ wan2.2-i2v-high-oral-insertion-v1.0.safetensors 1874153 2121297
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\ComfyUI\models\loras
