@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set CIVITAI_MODEL_DOWNLOAD_UNZIP=%EASY_TOOLS%\Civitai\Civitai_ModelDownloadUnzip.bat
pushd %~dp0..\..\..\ComfyUI\models\ultralytics

@REM https://civitai.com/models/1076050?modelVersionId=1207975
call %CIVITAI_MODEL_DOWNLOAD_UNZIP% segm\ 99coins_anime_girl_face_m_seg.pt 1076050 1207975
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\ComfyUI\models\ultralytics
