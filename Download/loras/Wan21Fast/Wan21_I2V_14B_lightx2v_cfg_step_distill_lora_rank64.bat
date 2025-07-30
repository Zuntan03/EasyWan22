@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set HUGGING_FACE=%EASY_TOOLS%\Download\HuggingFace.bat
pushd %~dp0..\..\..\ComfyUI\models\loras

@REM https://huggingface.co/lightx2v/Wan2.1-I2V-14B-480P-StepDistill-CfgDistill-Lightx2v
call %HUGGING_FACE% Wan21Fast\ Wan21_I2V_14B_lightx2v_cfg_step_distill_lora_rank64.safetensors lightx2v/Wan2.1-I2V-14B-480P-StepDistill-CfgDistill-Lightx2v loras/
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\ComfyUI\models\loras
