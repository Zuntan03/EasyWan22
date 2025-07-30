@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set HUGGING_FACE=%EASY_TOOLS%\Download\HuggingFace.bat
pushd %~dp0..\..\..\ComfyUI\models\diffusion_models

@REM https://huggingface.co/bullerwins/Wan2.2-I2V-A14B-GGUF
call %HUGGING_FACE% Base\ wan2.2_i2v_low_noise_14B_Q3_K_M.gguf bullerwins/Wan2.2-I2V-A14B-GGUF
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\ComfyUI\models\diffusion_models
