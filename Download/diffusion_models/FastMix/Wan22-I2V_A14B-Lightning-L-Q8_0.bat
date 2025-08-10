@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set HUGGING_FACE=%EASY_TOOLS%\Download\HuggingFace.bat
pushd %~dp0..\..\..\ComfyUI\models\diffusion_models

@REM https://huggingface.co/Zuntan/Wan22-I2V_A14B-Lightning-GGUF
call %HUGGING_FACE% FastMix\ Wan22-I2V_A14B-Lightning-L-Q8_0.gguf Zuntan/Wan22-I2V_A14B-Lightning-GGUF
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\ComfyUI\models\diffusion_models
