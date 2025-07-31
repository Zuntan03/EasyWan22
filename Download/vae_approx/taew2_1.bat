@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\EasyTools
set HUGGING_FACE=%EASY_TOOLS%\Download\HuggingFace.bat
pushd %~dp0..\..\ComfyUI\models\vae_approx

@REM https://huggingface.co/Kijai/WanVideo_comfy
call %HUGGING_FACE% .\ taew2_1.safetensors Kijai/WanVideo_comfy
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\ComfyUI\models\vae_approx
