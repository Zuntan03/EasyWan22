@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\EasyTools
set EASY_COMFYUI=%EASY_TOOLS%\ComfyUi
set GITHUB_CLONE_OR_PULL_HASH=%EASY_TOOLS%\Git\GitHub_CloneOrPull_Hash.bat
set GITHUB_CLONE_OR_PULL_TAG=%EASY_TOOLS%\Git\GitHub_CloneOrPull_Tag.bat
set JUNCTION=%EASY_TOOLS%\Link\JunctionNoReLink.bat
set CURL_CMD=C:\Windows\System32\curl.exe -kL

pushd "%~dp0.."

if exist "%~dp0ComfyUi-VersionUnlock.txt" ( goto :SKIP_COMFYUI_VERSION_LOCK )

@REM https://github.com/comfyanonymous/ComfyUI/releases
@REM https://github.com/comfyanonymous/ComfyUI/blob/e8df53b764c7dfce1a9235f6ee70a17cfdece3ff/main.py#L115 os.environ['MIMALLOC_PURGE_DELAY'] = '0' ?
echo v0.3.55> "%EASY_COMFYUI%\ComfyUi_Version.txt"

@REM https://github.com/Comfy-Org/ComfyUI-Manager/tags
echo 3.35> "%EASY_COMFYUI%\ComfyUiManager_Version.txt"

:SKIP_COMFYUI_VERSION_LOCK

if exist "%~dp0Pytorch-VersionUnlock.txt" ( goto :SKIP_PYTORCH_VERSION_LOCK )

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
@REM echo https://github.com/woct0rdho/SageAttention/releases/download/v2.2.0-windows.post1/sageattention-2.2.0+cu128torch2.7.1.post1-cp39-abi3-win_amd64.whl> "%EASY_COMFYUI%\SageAttention_Version.txt"
echo https://github.com/woct0rdho/SageAttention/releases/download/v2.2.0-windows.post2/sageattention-2.2.0+cu128torch2.7.1.post2-cp39-abi3-win_amd64.whl> "%EASY_COMFYUI%\SageAttention_Version.txt"

:SKIP_PYTORCH_VERSION_LOCK

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

@REM https://github.com/Zuntan03/EasyWan22/issues/1 Python 3.12.x, ModuleNotFoundError: No module named 'yaml'
echo pip install -qq PyYAML==6.0.2
pip install -qq PyYAML==6.0.2
if %ERRORLEVEL% neq 0 ( pause & popd & exit /b 1 )

@REM https://github.com/cubiq/ComfyUI_essentials/blob/main/requirements.txt
@REM https://files.catbox.moe/pqzrbx.png
@REM https://x.com/BoB_Arietta/status/1967855058374234254?t=r5GFk6pZEMBOws2atbkRrg
@REM https://x.com/KatonboOpk/status/1967877560488050924?t=deyPu3b1SH8cfO6ZXG4ioA
echo pip install -qq --only-binary=stringzilla stringzilla==4.0.7
pip install -qq --only-binary=stringzilla stringzilla==4.0.7

@REM llama-cpp-python
@REM if "%EASY_PYTHON_VERSION_3%"=="310" (
@REM 	goto :EASY_PYTHON_310_MODULES
@REM ) else if "%EASY_PYTHON_VERSION_3%"=="312" (
@REM 	goto :EASY_PYTHON_312_MODULES
@REM ) else (
@REM 	echo ERROR: Invalid Python version. EASY_PYTHON_VERSION_3: %EASY_PYTHON_VERSION_3%
@REM 	pause
@REM 	goto :EASY_PYTHON_MODULES_END
@REM )
@REM :EASY_PYTHON_310_MODULES
@REM if exist "%~dp0LlamaCppPython_GeforcrRTX50x0.txt" ( goto :LLAMA_CPP_PYTHON_50x0_310 )

@REM echo pip install -qq https://github.com/abetlen/llama-cpp-python/releases/download/v0.3.4-cu124/llama_cpp_python-0.3.4-cp310-cp310-win_amd64.whl
@REM pip install -qq https://github.com/abetlen/llama-cpp-python/releases/download/v0.3.4-cu124/llama_cpp_python-0.3.4-cp310-cp310-win_amd64.whl
@REM if %ERRORLEVEL% neq 0 ( pause & popd & exit /b 1 )
@REM goto :EASY_PYTHON_MODULES_END

@REM :LLAMA_CPP_PYTHON_50x0_310
@REM echo pip install https://huggingface.co/marcorez8/llama-cpp-python-windows-blackwell-cuda/resolve/main/llama_cpp_python-0.3.9-cp310-cp310-win_amd64.whl
@REM pip install https://huggingface.co/marcorez8/llama-cpp-python-windows-blackwell-cuda/resolve/main/llama_cpp_python-0.3.9-cp310-cp310-win_amd64.whl
@REM if %ERRORLEVEL% neq 0 ( pause & popd & exit /b 1 )
@REM goto :EASY_PYTHON_MODULES_END

@REM :EASY_PYTHON_312_MODULES
@REM if exist "%~dp0LlamaCppPython_GeforcrRTX50x0.txt" ( goto :LLAMA_CPP_PYTHON_50x0_312 )

@REM echo pip install -qq https://github.com/abetlen/llama-cpp-python/releases/download/v0.3.4-cu124/llama_cpp_python-0.3.4-cp312-cp312-win_amd64.whl
@REM pip install -qq https://github.com/abetlen/llama-cpp-python/releases/download/v0.3.4-cu124/llama_cpp_python-0.3.4-cp312-cp312-win_amd64.whl
@REM if %ERRORLEVEL% neq 0 ( pause & popd & exit /b 1 )
@REM goto :EASY_PYTHON_MODULES_END

@REM :LLAMA_CPP_PYTHON_50x0_312
@REM echo pip install https://github.com/boneylizard/llama-cpp-python-cu128-gemma3/releases/download/rtx5090-blackwell-gpt-oss/llama_cpp_python-0.3.16-cp312-cp312-win_amd64.whl
@REM pip install https://github.com/boneylizard/llama-cpp-python-cu128-gemma3/releases/download/rtx5090-blackwell-gpt-oss/llama_cpp_python-0.3.16-cp312-cp312-win_amd64.whl
@REM if %ERRORLEVEL% neq 0 ( pause & popd & exit /b 1 )

@REM :EASY_PYTHON_MODULES_END

popd rem "%~dp0.."
pushd "%~dp0..\ComfyUI\custom_nodes"

@REM 09/11 9cefe309e3d8eb9ad3afda576cf7098c72e9efad
@REM 09/20 0dc8a8456472e26e41a35fe3c660afaa98b9cdd1
@REM https://github.com/kijai/ComfyUI-WanVideoWrapper/commits/main/
call :GITHUB_HASH_REQUIREMENTS kijai ComfyUI-WanVideoWrapper main 0dc8a8456472e26e41a35fe3c660afaa98b9cdd1
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

@REM https://github.com/Fannovel16/comfyui_controlnet_aux/commits/main/
@REM 09/10 cc6b232f4a47f0cdf70f4e1bfa24b74bd0d75bf1
call :GITHUB_HASH_REQUIREMENTS Fannovel16 comfyui_controlnet_aux main cc6b232f4a47f0cdf70f4e1bfa24b74bd0d75bf1
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/pythongosssss/ComfyUI-Custom-Scripts/commits/main/
@REM 08/10 f2838ed5e59de4d73cde5c98354b87a8d3200190
call :GITHUB_HASH_REQUIREMENTS pythongosssss ComfyUI-Custom-Scripts main f2838ed5e59de4d73cde5c98354b87a8d3200190
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM 09/03 c87493b98237b1edd9018c4974c10fe0c2b870c9
@REM 09/19 223f2a8fc74f8b8d345a23d5ae39c0c6959a204b
@REM https://github.com/AlekPet/ComfyUI_Custom_Nodes_AlekPet/commits/master/
call :GITHUB_HASH_REQUIREMENTS AlekPet ComfyUI_Custom_Nodes_AlekPet master c87493b98237b1edd9018c4974c10fe0c2b870c9
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
@REM 09/15 be2a08330d7ec232d684e50ab938870d7529471e
call :GITHUB_HASH_REQUIREMENTS city96 ComfyUI-GGUF main be2a08330d7ec232d684e50ab938870d7529471e
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/ltdrdata/ComfyUI-Impact-Pack/tags
call :GITHUB_TAG_REQUIREMENTS ltdrdata ComfyUI-Impact-Pack Main 8.21.2
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/ltdrdata/ComfyUI-Impact-Subpack/tags
call :GITHUB_TAG_REQUIREMENTS ltdrdata ComfyUI-Impact-Subpack main 1.3.4
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

if not exist ..\models\ultralytics\ ( mkdir ..\models\ultralytics )

@REM https://github.com/kijai/ComfyUI-KJNodes/commits/main/
@REM 09/02 0adab07d1ad3d0780afc97319eaf37c3681af37d
@REM 09/19 e81f33508b0821ea2f53f4f46a833fa6215626bd
call :GITHUB_HASH_REQUIREMENTS kijai ComfyUI-KJNodes main e81f33508b0821ea2f53f4f46a833fa6215626bd
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

@REM 出力先が繋がっていなくても動作してしまい、無効化できない
@REM @REM https://github.com/yuvraj108c/ComfyUI-Rife-Tensorrt/commits/master/
@REM call :GITHUB_HASH_REQUIREMENTS yuvraj108c ComfyUI-Rife-Tensorrt master 06b847dfa799aa97cb3ef640cc1f26a53029e7f3
@REM if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM echo pip install -qq tensorrt-cu12_bindings==10.4.0 tensorrt-cu12_libs==10.4.0
@REM pip install -qq tensorrt-cu12_bindings==10.4.0 tensorrt-cu12_libs==10.4.0
@REM if %ERRORLEVEL% neq 0 ( pause & popd & exit /b 1 )

@REM if exist ComfyUI-Rife-Tensorrt\models\ ( goto :RIFE_TENSORRT_COMPILED )
@REM mkdir ComfyUI-Rife-Tensorrt\models
@REM mkdir ..\models\tensorrt\rife

@REM pushd ComfyUI-Rife-Tensorrt\models
@REM echo %CURL_CMD% -O https://huggingface.co/yuvraj108c/rife-onnx/resolve/main/rife49_ensemble_True_scale_1_sim.onnx
@REM %CURL_CMD% -O https://huggingface.co/yuvraj108c/rife-onnx/resolve/main/rife49_ensemble_True_scale_1_sim.onnx
@REM if %ERRORLEVEL% neq 0 ( pause & popd & goto :RIFE_TENSORRT_COMPILED )
@REM popd

@REM pushd ComfyUI-Rife-Tensorrt
@REM echo python export_trt.py
@REM python export_trt.py
@REM if %ERRORLEVEL% neq 0 ( pause & popd & goto :RIFE_TENSORRT_COMPILED )
@REM popd

@REM echo move /Y ComfyUI-Rife-Tensorrt\models\rife49_ensemble_True_scale_1_sim.engine ..\models\tensorrt\rife\
@REM move /Y ComfyUI-Rife-Tensorrt\models\rife49_ensemble_True_scale_1_sim.engine ..\models\tensorrt\rife\
@REM if %ERRORLEVEL% neq 0 ( pause )
@REM :RIFE_TENSORRT_COMPILED

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
@REM 09/07 26988df02c7e84d0fe22908ad0955fc8797796f6
@REM 09/10 0fb1e239a903e93ef626a8c20589b38f46e39dff
call :GITHUB_HASH_REQUIREMENTS rgthree rgthree-comfy main 0fb1e239a903e93ef626a8c20589b38f46e39dff
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

echo pip install -qq huggingface_hub[hf_xet]
pip install -qq huggingface_hub[hf_xet]
if %ERRORLEVEL% neq 0 ( pause & popd & exit /b 1 )

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

@REM echo xcopy /SQY %~dp0ComfyUI\*.* .\
@REM xcopy /SQY %~dp0ComfyUI\*.* .\
@REM if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

call %EASY_TOOLS%\Ffmpeg\Ffmpeg_Setup.bat venv\Scripts
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

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
