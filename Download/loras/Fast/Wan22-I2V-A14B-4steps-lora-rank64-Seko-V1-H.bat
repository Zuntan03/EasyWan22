@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set HUGGING_FACE=%EASY_TOOLS%\Download\HuggingFace.bat
pushd %~dp0..\..\..\ComfyUI\models\loras

@REM https://huggingface.co/lightx2v/Wan2.2-Lightning
call %HUGGING_FACE% Fast\ Wan22-I2V-A14B-4steps-lora-rank64-Seko-V1-H.safetensors lightx2v/Wan2.2-Lightning Wan2.2-I2V-A14B-4steps-lora-rank64-Seko-V1/high_noise_model.safetensors?
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\ComfyUI\models\loras
