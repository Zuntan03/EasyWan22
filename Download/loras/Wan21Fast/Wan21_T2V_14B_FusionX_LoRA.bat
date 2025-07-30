@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set HUGGING_FACE=%EASY_TOOLS%\Download\HuggingFace.bat
pushd %~dp0..\..\..\ComfyUI\models\loras

@REM https://huggingface.co/vrgamedevgirl84/Wan14BT2VFusioniX
call %HUGGING_FACE% Wan21Fast\ Wan21_T2V_14B_FusionX_LoRA.safetensors vrgamedevgirl84/Wan14BT2VFusioniX FusionX_LoRa/Wan2.1_T2V_14B_FusionX_LoRA.safetensors?

if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\ComfyUI\models\loras
