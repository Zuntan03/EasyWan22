@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set HUGGING_FACE=%EASY_TOOLS%\Download\HuggingFace.bat
pushd %~dp0..\..\..\ComfyUI\models\diffusion_models

@REM https://huggingface.co/Kijai/WanVideo_comfy_fp8_scaled
call %HUGGING_FACE% Animate\ Wan2_2-Animate-14B_fp8_e4m3fn_scaled_KJ.safetensors Kijai/WanVideo_comfy_fp8_scaled Wan22Animate/
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\ComfyUI\models\diffusion_models
