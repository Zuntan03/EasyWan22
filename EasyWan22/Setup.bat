@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\EasyTools
set EASY_COMFYUI=%EASY_TOOLS%\ComfyUi
set GITHUB_CLONE_OR_PULL_HASH=%EASY_TOOLS%\Git\GitHub_CloneOrPull_Hash.bat
set GITHUB_CLONE_OR_PULL_TAG=%EASY_TOOLS%\Git\GitHub_CloneOrPull_Tag.bat
set JUNCTION=%EASY_TOOLS%\Link\JunctionNoReLink.bat
set CURL_CMD=C:\Windows\System32\curl.exe -kL

pushd "%~dp0.."

@REM https://github.com/comfyanonymous/ComfyUI/releases
echo v0.3.48> "%EASY_COMFYUI%\ComfyUi_Version.txt"

@REM https://github.com/Comfy-Org/ComfyUI-Manager/tags
echo 3.35> "%EASY_COMFYUI%\ComfyUiManager_Version.txt"

@REM https://pytorch.org/get-started/locally/
@REM https://download.pytorch.org/whl/torch/ torch-2.8.0
echo torch==2.7.1+cu128 torchvision==0.22.1+cu128 torchaudio==2.7.1+cu128 xformers==0.0.31.post1 --index-url https://download.pytorch.org/whl/cu128> "%EASY_COMFYUI%\Torch_Version.txt"

@REM https://github.com/woct0rdho/triton-windows/releases v3.4.x PyTorch >= 2.8
echo triton-windows==3.3.1.post19> "%EASY_COMFYUI%\Triton_Version.txt"

@REM https://github.com/woct0rdho/SageAttention/releases
@REM echo https://github.com/woct0rdho/SageAttention/releases/download/v2.2.0-windows/sageattention-2.2.0+cu128torch2.7.1-cp312-cp312-win_amd64.whl> "%EASY_COMFYUI%\SageAttention_Version.txt"
echo https://github.com/woct0rdho/SageAttention/releases/download/v2.2.0-windows.post1/sageattention-2.2.0+cu128torch2.7.1.post1-cp39-abi3-win_amd64.whl> "%EASY_COMFYUI%\SageAttention_Version.txt"

call %EASY_TOOLS%\ComfyUi\ComfyUi_Update.bat
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM ComfyUI-Impact-Pack\requirements.txt
echo pip install -qq numpy==1.26.4 opencv-python-headless==4.11.0.86 opencv-contrib-python==4.11.0.86 opencv-python==4.11.0.86
pip install -qq numpy==1.26.4 opencv-python-headless==4.11.0.86 opencv-contrib-python==4.11.0.86 opencv-python==4.11.0.86
if %ERRORLEVEL% neq 0 ( pause & popd & exit /b 1 )

@REM WanVideoPromptExtender Qwen
@REM https://github.com/kijai/ComfyUI-Florence2/issues/134
@REM https://github.com/huggingface/transformers/issues/36886
echo pip install -qq transformers==4.49.0
pip install -qq transformers==4.49.0
if %ERRORLEVEL% neq 0 ( pause & popd & exit /b 1 )

popd rem "%~dp0.."
pushd "%~dp0..\ComfyUI\custom_nodes"

@REM 08/01 9edab7456230b200667a9680d7a93ff12cfd9000
@REM 08/02 8035353cc05756f0a786597d3969657ab626e0e1
@REM 08/03 309a93c2211dfd8a7c94199eeae6c83d743e9338
@REM 08/03 5cde6f2216ac948bf7f34959cf7999100763a008
@REM 08/04 7862749cfe1d427a7b81cce92deb8905e99bf96f
@REM https://github.com/kijai/ComfyUI-WanVideoWrapper/commits/main/
call :GITHUB_HASH_REQUIREMENTS kijai ComfyUI-WanVideoWrapper main 7862749cfe1d427a7b81cce92deb8905e99bf96f
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

xcopy /SQY ComfyUI-WanVideoWrapper\example_workflows\*.* ..\user\default\workflows\Kijai\

@REM DEBUG
if defined EASY_WAN22_QUICK_UPDATE ( exit /b 0 )

@REM https://github.com/christian-byrne/audio-separation-nodes-comfyui/commits/master/
call :GITHUB_HASH_REQUIREMENTS christian-byrne audio-separation-nodes-comfyui master 31a4567726e035097cc2d1f767767908a6fda2ea
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM @REM https://github.com/Kosinkadink/ComfyUI-AnimateDiff-Evolved/commits/main/
@REM call :GITHUB_HASH_REQUIREMENTS Kosinkadink ComfyUI-AnimateDiff-Evolved main a34036b662d69d155a4536b2ac65483ae941e257
@REM if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/pythongosssss/ComfyUI-Custom-Scripts/commits/main/
call :GITHUB_HASH_REQUIREMENTS pythongosssss ComfyUI-Custom-Scripts main aac13aa7ce35b07d43633c3bbe654a38c00d74f5
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM 08/02 c34f5b465ecc77886b5a87ddd6a3a887603d7559
@REM https://github.com/AlekPet/ComfyUI_Custom_Nodes_AlekPet/commits/master/
call :GITHUB_HASH_REQUIREMENTS AlekPet ComfyUI_Custom_Nodes_AlekPet master c34f5b465ecc77886b5a87ddd6a3a887603d7559
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/kijai/ComfyUI-DepthAnythingV2/commits/main/
call :GITHUB_HASH_REQUIREMENTS kijai ComfyUI-DepthAnythingV2 main d505cbca99803fc63327b8305618a23e59a18b42
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/cubiq/ComfyUI_essentials/commits/main/
call :GITHUB_HASH_REQUIREMENTS cubiq ComfyUI_essentials main 9d9f4bedfc9f0321c19faf71855e228c93bd0dc9
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/kijai/ComfyUI-Florence2/commits/main/
@REM 05/21 de485b65b3e1b9b887ab494afa236dff4bef9a7e
@REM 08/02 6b3064b8bdfe0afca123918804300271995b0be5 Need transformers==4.49.0
call :GITHUB_HASH_REQUIREMENTS kijai ComfyUI-Florence2 main 6b3064b8bdfe0afca123918804300271995b0be5
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/Fannovel16/ComfyUI-Frame-Interpolation/commits/main/
call :GITHUB_HASH_REQUIREMENTS Fannovel16 ComfyUI-Frame-Interpolation main a969c01dbccd9e5510641be04eb51fe93f6bfc3d
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

echo pip install -qq -r ComfyUI-Frame-Interpolation\requirements-no-cupy.txt
pip install -qq -r ComfyUI-Frame-Interpolation\requirements-no-cupy.txt
if %ERRORLEVEL% neq 0 ( pause & popd & exit /b 1 )

@REM https://github.com/city96/ComfyUI-GGUF/commits/main/
call :GITHUB_HASH_REQUIREMENTS city96 ComfyUI-GGUF main b3ec875a68d94b758914fd48d30571d953bb7a54
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/ltdrdata/ComfyUI-Impact-Pack/tags
call :GITHUB_TAG_REQUIREMENTS ltdrdata ComfyUI-Impact-Pack Main 8.21.2
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/ltdrdata/ComfyUI-Impact-Subpack/tags
call :GITHUB_TAG_REQUIREMENTS ltdrdata ComfyUI-Impact-Subpack main 1.3.4
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

if not exist ..\models\ultralytics\ ( mkdir ..\models\ultralytics )

@REM https://github.com/kijai/ComfyUI-KJNodes/commits/main/
call :GITHUB_HASH_REQUIREMENTS kijai ComfyUI-KJNodes main a6b867b63a29ca48ddb15c589e17a9f2d8530d57
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

if not exist ComfyUI-KJNodes\fonts\f910-shin-comic-2.04.otf (
	copy %~dp0f910-shin-comic-2.04\f910-shin-comic-2.04.otf ComfyUI-KJNodes\fonts\
)

@REM https://github.com/kijai/ComfyUI-segment-anything-2/commits/main/
call :GITHUB_HASH_REQUIREMENTS kijai ComfyUI-segment-anything-2 main c59676b008a76237002926f684d0ca3a9b29ac54
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/SeanScripts/ComfyUI-Unload-Model
call :GITHUB_HASH_REQUIREMENTS SeanScripts ComfyUI-Unload-Model main ac5ffb4ed05546545ce7cf38e7b69b5152714eed
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/Kosinkadink/ComfyUI-VideoHelperSuite/commits/main/
call :GITHUB_HASH_REQUIREMENTS Kosinkadink ComfyUI-VideoHelperSuite main 330bce6c3c0d47ebdedcc0348d9ab355707b7523
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/orssorbit/ComfyUI-wanBlockswap/commits/main/
@REM call :GITHUB_HASH_REQUIREMENTS orssorbit ComfyUI-wanBlockswap main 5fa2ec0fa55879fe43a33e762fff91fc2c553a67
@REM if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/rgthree/rgthree-comfy/commits/main/
@REM 07/12 944d5353a1b0a668f40844018c3dc956b95a67d7
@REM 08/02 c5ffa43de4ddb17244626a65a30700a05dd6b67d
call :GITHUB_HASH_REQUIREMENTS rgthree rgthree-comfy main c5ffa43de4ddb17244626a65a30700a05dd6b67d
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem "%~dp0..\ComfyUI\custom_nodes"
pushd "%~dp0..\ComfyUI"

call %JUNCTION% ..\Output output
@REM if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

call %JUNCTION% ..\Model models
@REM if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

if not exist user\default\workflows\ ( mkdir user\default\workflows )
call %JUNCTION% ..\Workflow user\default\workflows
@REM if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

call %JUNCTION% user\default\workflows\Easy %~dp0Workflow
@REM if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

if exist input\takopii_kirara.webp ( goto :EXIST_INPUT_IMG )
echo %CURL_CMD% -o input\takopii_kirara.webp https://yyy.wpx.jp/EasyWanVideo/input/takopii_kirara.webp
%CURL_CMD% -o input\takopii_kirara.webp https://yyy.wpx.jp/EasyWanVideo/input/takopii_kirara.webp
:EXIST_INPUT_IMG

popd rem "%~dp0..\ComfyUI"

if not exist %~dp0AutoDownload.txt ( exit /b 0 )
call %~dp0..\Download\Default.bat
call %~dp0..\Sample\_Download.bat
exit /b 0


:MOVE_TO_BACKUP
set "SRC_DIR=%1"
if not exist %SRC_DIR% ( exit /b 0 )

if not exist ..\custom_nodes-backup\ (
	echo mkdir ..\custom_nodes-backup
	mkdir ..\custom_nodes-backup
)

set "DST_DIR=..\custom_nodes-backup\%~nx1"
if exist %DST_DIR%\ (
	echo rmdir /S /Q %DST_DIR%
    rmdir /S /Q %DST_DIR%
)

echo move /Y %SRC_DIR% %DST_DIR%
move /Y %SRC_DIR% %DST_DIR%
exit /b 0


:GITHUB_HASH_REQUIREMENTS
set "GITHUB_AUTHOR=%1"
set "GITHUB_REPO=%2"
set "GITHUB_BRANCH=%3"
set "GITHUB_HASH=%4"

call %GITHUB_CLONE_OR_PULL_HASH% %GITHUB_AUTHOR% %GITHUB_REPO% %GITHUB_BRANCH% %GITHUB_HASH%
if %ERRORLEVEL% neq 0 ( exit /b 1 )

if exist %GITHUB_REPO%\requirements.txt (
	setlocal enabledelayedexpansion
	echo pip install -qq -r %GITHUB_REPO%\requirements.txt
	pip install -qq -r %GITHUB_REPO%\requirements.txt
	if !ERRORLEVEL! neq 0 ( pause & endlocal & exit /b 1 )
	endlocal
)
exit /b 0


:GITHUB_TAG_REQUIREMENTS
set "GITHUB_AUTHOR=%1"
set "GITHUB_REPO=%2"
set "GITHUB_BRANCH=%3"
set "GITHUB_TAG=%4"

call %GITHUB_CLONE_OR_PULL_TAG% %GITHUB_AUTHOR% %GITHUB_REPO% %GITHUB_BRANCH% %GITHUB_TAG%
if %ERRORLEVEL% neq 0 ( exit /b 1 )

if exist %GITHUB_REPO%\requirements.txt (
	setlocal enabledelayedexpansion
	echo pip install -qq -r %GITHUB_REPO%\requirements.txt
	pip install -qq -r %GITHUB_REPO%\requirements.txt
	if !ERRORLEVEL! neq 0 ( pause & endlocal & exit /b 1 )
	endlocal
)
exit /b 0
