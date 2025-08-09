@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set HUGGING_FACE=%EASY_TOOLS%\Download\HuggingFace.bat
pushd %~dp0..\..\..\ComfyUI\models\loras

@REM https://huggingface.co/Kijai/WanVideo_comfy
call %HUGGING_FACE% Fast\ Wan2.2-Lightning_I2V-A14B-4steps-lora_LOW_fp16.safetensors Kijai/WanVideo_comfy Wan22-Lightning/
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\ComfyUI\models\loras
