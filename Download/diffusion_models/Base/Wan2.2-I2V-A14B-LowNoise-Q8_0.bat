@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set HUGGING_FACE=%EASY_TOOLS%\Download\HuggingFace.bat
pushd %~dp0..\..\..\ComfyUI\models\diffusion_models

@REM https://huggingface.co/QuantStack/Wan2.2-I2V-A14B-GGUF
call %HUGGING_FACE% Base\ Wan2.2-I2V-A14B-LowNoise-Q8_0.gguf QuantStack/Wan2.2-I2V-A14B-GGUF LowNoise/
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\ComfyUI\models\diffusion_models
