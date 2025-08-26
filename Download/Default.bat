@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\EasyTools
call %EASY_TOOLS%\Civitai\Civitai_ApiKey.bat
@REM if %ERRORLEVEL% neq 0 ( exit /b 1 )

call %~dp0diffusion_models\FastMix\Wan22-I2V-FastMix_v10-H-Q4_K_M.bat
call %~dp0diffusion_models\FastMix\Wan22-I2V-FastMix_v10-L-Q4_K_M.bat
call %~dp0diffusion_models\Base\Wan2.2-I2V-A14B-HighNoise-Q4_K_M.bat
call %~dp0diffusion_models\Base\Wan2.2-I2V-A14B-LowNoise-Q4_K_M.bat

call %~dp0text_encoders\Qwen2.5_3B_instruct_bf16.bat
call %~dp0text_encoders\umt5_xxl_fp8_e4m3fn_scaled.bat
call %~dp0text_encoders\umt5-xxl-enc-fp8_e4m3fn.bat

call %~dp0ultralytics\segm\AnimeNsfwDetectionAll_v4.bat

call %~dp0upscale_models\2x-AnimeSharpV4_Fast_RCAN_PU.bat

call %~dp0vae\Wan2_1_VAE_bf16.bat
call %~dp0vae_approx\taew2_1.bat

call %~dp0loras\Wan21Fast\lightx2v_I2V_14B_480p_cfg_step_distill_rank64_bf16.bat
call %~dp0loras\Fast\Wan22-I2V-A14B-4steps-lora-rank64-Seko-V1-H.bat
call %~dp0loras\Fast\Wan22-I2V-A14B-4steps-lora-rank64-Seko-V1-L.bat
@REM call %~dp0loras\Fast\Wan2.2-Lightning_I2V-A14B-4steps-lora_HIGH_fp16.bat
@REM call %~dp0loras\Fast\Wan2.2-Lightning_I2V-A14B-4steps-lora_LOW_fp16.bat

call %~dp0loras\Bundle\Nashikone-I2v.bat
call %~dp0loras\Bundle\Nashikone-I2vWan21.bat

call %~dp0loras\Nsfw\AnimeCumshotAesthetics_v10-H.bat
call %~dp0loras\Nsfw\AnimeCumshotAesthetics_v10-L.bat
call %~dp0loras\Nsfw\AssertiveCowgirl-H.bat
call %~dp0loras\Nsfw\AssertiveCowgirl-L.bat
call %~dp0loras\Nsfw\Footjob_v10-H.bat
call %~dp0loras\Nsfw\Footjob_v10-L.bat
call %~dp0loras\Nsfw\GeneralNsfw22_v008a-H.bat
call %~dp0loras\Nsfw\GeneralNsfw22_v008a-L.bat
call %~dp0loras\Nsfw\OralInsertion_v10.bat
call %~dp0loras\Nsfw\PenisPlay-H.bat
call %~dp0loras\Nsfw\PenisPlay-L.bat
call %~dp0loras\Nsfw\PovCowgirl_v02-H.bat
call %~dp0loras\Nsfw\PovCowgirl_v02-L.bat
call %~dp0loras\Nsfw\PovMissionary-H.bat
call %~dp0loras\Nsfw\PovMissionary-L.bat
