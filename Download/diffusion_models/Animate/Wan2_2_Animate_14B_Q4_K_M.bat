@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set HUGGING_FACE=%EASY_TOOLS%\Download\HuggingFace.bat
pushd %~dp0..\..\..\ComfyUI\models\diffusion_models

@REM https://huggingface.co/Kijai/WanVideo_comfy_GGUF
call %HUGGING_FACE% Animate\ Wan22Animate-14B-Q4_K_M.gguf Kijai/WanVideo_comfy_GGUF Wan22Animate/Wan2_2_Animate_14B_Q4_K_M.gguf?
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\ComfyUI\models\diffusion_models
