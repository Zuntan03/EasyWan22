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
echo v0.3.52> "%EASY_COMFYUI%\ComfyUi_Version.txt"

@REM https://github.com/Comfy-Org/ComfyUI-Manager/tags
echo 3.35> "%EASY_COMFYUI%\ComfyUiManager_Version.txt"

echo xformers> "%EASY_COMFYUI%\UninstallModule.txt"

@REM https://pytorch.org/get-started/locally/
@REM https://download.pytorch.org/whl/torch/ Compile bug, torch-2.8.1 ?
@REM echo torch==2.8.0+cu128 torchvision==0.23.0+cu128 torchaudio==2.8.0+cu128 --index-url https://download.pytorch.org/whl/cu128> "%EASY_COMFYUI%\Torch_Version.txt"
echo torch==2.7.1+cu128 torchvision==0.22.1+cu128 torchaudio==2.7.1+cu128 --index-url https://download.pytorch.org/whl/cu128> "%EASY_COMFYUI%\Torch_Version.txt"


@REM https://github.com/woct0rdho/triton-windows/releases v3.4.x PyTorch >= 2.8
@REM echo triton-windows==3.4.0.post20> "%EASY_COMFYUI%\Triton_Version.txt"
echo triton-windows==3.3.1.post19> "%EASY_COMFYUI%\Triton_Version.txt"

@REM https://github.com/woct0rdho/SageAttention/releases
@REM echo https://github.com/woct0rdho/SageAttention/releases/download/v2.2.0-windows.post2/sageattention-2.2.0+cu128torch2.8.0.post2-cp39-abi3-win_amd64.whl> "%EASY_COMFYUI%\SageAttention_Version.txt"
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

@REM https://github.com/Zuntan03/EasyWan22/issues/1
echo pip install -qq PyYAML==6.0.2
pip install -qq PyYAML==6.0.2
if %ERRORLEVEL% neq 0 ( pause & popd & exit /b 1 )

popd rem "%~dp0.."
pushd "%~dp0..\ComfyUI\custom_nodes"

@REM REMBG: pip UnicodeDecodeError: 'cp932' codec can't decode byte 0x97 in position 2879: illegal multibyte sequence
set PYTHONUTF8=1

@REM 08/13 2c854c53ee8c078069d9b95bf493bb44b25039ee ver 1.2.8
@REM 08/13 d59690105518ab5eef50690028a7b0fe0d793631 Result changed
@REM 08/25 bc22008b6684939fcb90472a05b2e28d7bef6675
@REM 08/26 dfb2a592119bf655742e306d2dd54eb81a8d2217
@REM https://github.com/kijai/ComfyUI-WanVideoWrapper/commits/main/
call :GITHUB_HASH_REQUIREMENTS kijai ComfyUI-WanVideoWrapper main dfb2a592119bf655742e306d2dd54eb81a8d2217
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

xcopy /SQY ComfyUI-WanVideoWrapper\example_workflows\*.* ..\user\default\workflows\Kijai\

@REM DEBUG
if defined EASY_WAN22_QUICK_UPDATE ( exit /b 0 )

@REM https://github.com/christian-byrne/audio-separation-nodes-comfyui/commits/master/
call :GITHUB_HASH_REQUIREMENTS christian-byrne audio-separation-nodes-comfyui master 31a4567726e035097cc2d1f767767908a6fda2ea
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/Kosinkadink/ComfyUI-AnimateDiff-Evolved/commits/main/
@REM call :GITHUB_HASH_REQUIREMENTS Kosinkadink ComfyUI-AnimateDiff-Evolved main a34036b662d69d155a4536b2ac65483ae941e257
@REM if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/pythongosssss/ComfyUI-Custom-Scripts/commits/main/
@REM 08/10 f2838ed5e59de4d73cde5c98354b87a8d3200190
call :GITHUB_HASH_REQUIREMENTS pythongosssss ComfyUI-Custom-Scripts main f2838ed5e59de4d73cde5c98354b87a8d3200190
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM 08/02 c34f5b465ecc77886b5a87ddd6a3a887603d7559
@REM 08/20 e11d490f7edbe52816fca2f416166af2a0be5064
@REM 08/22 13f2e5c33698025f7694ebbf273f905f87c6a4ec
@REM https://github.com/AlekPet/ComfyUI_Custom_Nodes_AlekPet/commits/master/
call :GITHUB_HASH_REQUIREMENTS AlekPet ComfyUI_Custom_Nodes_AlekPet master 13f2e5c33698025f7694ebbf273f905f87c6a4ec
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
@REM 08/09 00b63382966a444a9fefacb65b8deb188d12a458
call :GITHUB_HASH_REQUIREMENTS kijai ComfyUI-Florence2 main 00b63382966a444a9fefacb65b8deb188d12a458
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/Fannovel16/ComfyUI-Frame-Interpolation/commits/main/
call :GITHUB_HASH_REQUIREMENTS Fannovel16 ComfyUI-Frame-Interpolation main a969c01dbccd9e5510641be04eb51fe93f6bfc3d
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

echo pip install -qq -r ComfyUI-Frame-Interpolation\requirements-no-cupy.txt
pip install -qq -r ComfyUI-Frame-Interpolation\requirements-no-cupy.txt
if %ERRORLEVEL% neq 0 ( pause & popd & exit /b 1 )

@REM https://github.com/city96/ComfyUI-GGUF/commits/main/
@REM 08/20 d247022e3fa66851c5084cc251b076aab816423d
call :GITHUB_HASH_REQUIREMENTS city96 ComfyUI-GGUF main d247022e3fa66851c5084cc251b076aab816423d
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/ltdrdata/ComfyUI-Impact-Pack/tags
call :GITHUB_TAG_REQUIREMENTS ltdrdata ComfyUI-Impact-Pack Main 8.21.2
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/ltdrdata/ComfyUI-Impact-Subpack/tags
call :GITHUB_TAG_REQUIREMENTS ltdrdata ComfyUI-Impact-Subpack main 1.3.4
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

if not exist ..\models\ultralytics\ ( mkdir ..\models\ultralytics )

@REM https://github.com/kijai/ComfyUI-KJNodes/commits/main/
@REM 08/21 e2ce0843d1183aea86ce6a1617426f492dcdc802
@REM 08/23 ba9153cb06fc77bfd86c36835f1817482e8328a0
call :GITHUB_HASH_REQUIREMENTS kijai ComfyUI-KJNodes main ba9153cb06fc77bfd86c36835f1817482e8328a0
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

if not exist ComfyUI-KJNodes\fonts\f910-shin-comic-2.04.otf (
	copy %~dp0f910-shin-comic-2.04\f910-shin-comic-2.04.otf ComfyUI-KJNodes\fonts\
)

@REM https://github.com/WainWong/ComfyUI-Loop-image/commits/main/
call :GITHUB_HASH_REQUIREMENTS WainWong ComfyUI-Loop-image main 2e0153ba950c5b723062209d9aff8c0aba23a88e
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/Smirnov75/ComfyUI-mxToolkit/commits/main/
call :GITHUB_HASH_REQUIREMENTS Smirnov75 ComfyUI-mxToolkit main 7f7a0e584f12078a1c589645d866ae96bad0cc35
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/1038lab/ComfyUI-RMBG/commits/main/
@REM 08/19 ff0af696a69cfb27ea2a98509d0f57e762200978
call :GITHUB_HASH_REQUIREMENTS 1038lab ComfyUI-RMBG main ff0af696a69cfb27ea2a98509d0f57e762200978
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/kijai/ComfyUI-segment-anything-2/commits/main/
call :GITHUB_HASH_REQUIREMENTS kijai ComfyUI-segment-anything-2 main c59676b008a76237002926f684d0ca3a9b29ac54
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/SeanScripts/ComfyUI-Unload-Model/commits/main/
call :GITHUB_HASH_REQUIREMENTS SeanScripts ComfyUI-Unload-Model main ac5ffb4ed05546545ce7cf38e7b69b5152714eed
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/Kosinkadink/ComfyUI-VideoHelperSuite/commits/main/
@REM 08/07 8e4d79471bf1952154768e8435a9300077b534fa
call :GITHUB_HASH_REQUIREMENTS Kosinkadink ComfyUI-VideoHelperSuite main 8e4d79471bf1952154768e8435a9300077b534fa
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/orssorbit/ComfyUI-wanBlockswap/commits/main/
@REM call :GITHUB_HASH_REQUIREMENTS orssorbit ComfyUI-wanBlockswap main 5fa2ec0fa55879fe43a33e762fff91fc2c553a67
@REM if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/rgthree/rgthree-comfy/commits/main/
@REM 07/12 944d5353a1b0a668f40844018c3dc956b95a67d7
@REM 08/02 c5ffa43de4ddb17244626a65a30700a05dd6b67d
@REM 08/20 110e4ef1dbf2ea20ec39ae5a737bd5e56d4e54c2
@REM 08/25 dbc5fa5e89b6a8b6a1a1dda787505b690f18026c
call :GITHUB_HASH_REQUIREMENTS rgthree rgthree-comfy main dbc5fa5e89b6a8b6a1a1dda787505b690f18026c
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem "%~dp0..\ComfyUI\custom_nodes"
pushd "%~dp0..\ComfyUI"

if not exist input\Load ( mkdir input\Load )

call %JUNCTION% ..\Input input
@REM if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

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
