@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set HUGGING_FACE_HUB=%EASY_TOOLS%\Download\HuggingFaceHub.bat
set JUNCTION=%EASY_TOOLS%\Link\Junction.bat

pushd %~dp0

echo.
echo https://huggingface.co/nashikone/iroiroLoRA
echo call %HUGGING_FACE_HUB% %~n0\ nashikone/iroiroLoRA model Wan2.1_i2v_720p_14B_fp16/**
call %HUGGING_FACE_HUB% %~n0\ nashikone/iroiroLoRA model Wan2.1_i2v_720p_14B_fp16/**
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

echo call %JUNCTION% %~dp0..\..\..\Model\loras\Nashikone-I2vWan21 .\%~n0\Wan2.1_i2v_720p_14B_fp16
call %JUNCTION% %~dp0..\..\..\Model\loras\Nashikone-I2vWan21 .\%~n0\Wan2.1_i2v_720p_14B_fp16
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0
