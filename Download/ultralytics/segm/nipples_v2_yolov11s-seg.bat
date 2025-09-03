@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set CIVITAI_MODEL_UNZIP=%EASY_TOOLS%\Download\CivitaiModelUnzip.bat
pushd %~dp0..\..\..\ComfyUI\models\ultralytics

@REM https://civitai.com/models/490259?modelVersionId=2038997
call %CIVITAI_MODEL_UNZIP% segm\ nipples_v2_yolov11s-seg.pt 490259 2038997
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

if not exist segm\nipples_v2_yolov11s-seg.pt (
	echo move segm\adetailer_nipples_segm_v20\nipples_v2_yolov11s-seg.pt segm\
	move segm\adetailer_nipples_segm_v20\nipples_v2_yolov11s-seg.pt segm\
)

popd rem %~dp0..\..\..\ComfyUI\models\ultralytics
