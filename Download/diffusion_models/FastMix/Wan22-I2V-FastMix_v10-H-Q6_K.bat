@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set HUGGING_FACE=%EASY_TOOLS%\Download\HuggingFace.bat
pushd %~dp0..\..\..\ComfyUI\models\diffusion_models

@REM https://huggingface.co/Zuntan/Wan22-FastMix
call %HUGGING_FACE% FastMix\ Wan22-I2V-FastMix_v10-H-Q6_K.gguf Zuntan/Wan22-FastMix
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\ComfyUI\models\diffusion_models
