@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\EasyTools
set HUGGING_FACE=%EASY_TOOLS%\Download\HuggingFace.bat
pushd %~dp0..\..\ComfyUI\models\text_encoders

@REM https://huggingface.co/Kijai/WanVideo_comfy
call %HUGGING_FACE% .\ Qwen2.5_3B_instruct_bf16.safetensors Kijai/WanVideo_comfy Qwen/
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\ComfyUI\models\text_encoders
