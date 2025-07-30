@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set HUGGING_FACE=%EASY_TOOLS%\Download\HuggingFace.bat
pushd %~dp0..\..\..\ComfyUI\models\loras

@REM https://huggingface.co/Kijai/WanVideo_comfy
call %HUGGING_FACE% Wan21Fast\ lightx2v_T2V_14B_cfg_step_distill_v2_lora_rank32_bf16.safetensors Kijai/WanVideo_comfy Lightx2v/
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\ComfyUI\models\loras
