@echo off
chcp 65001 > NUL
@REM set EASY_TOOLS=%~dp0..\EasyTools
@REM call %EASY_TOOLS%\Civitai\Civitai_ApiKey.bat
@REM if %ERRORLEVEL% neq 0 ( exit /b 1 )

call %~dp0upscale_models\2x-AnimeSharpV4_Fast_RCAN_PU.bat

@REM call %~dp0diffusion_models\Base\wan2.2_i2v_high_noise_14B_Q3_K_M.bat
@REM call %~dp0diffusion_models\Base\wan2.2_i2v_low_noise_14B_Q3_K_M.bat
call %~dp0diffusion_models\Base\Wan2.2-I2V-A14B-HighNoise-Q3_K_M.bat
call %~dp0diffusion_models\Base\Wan2.2-I2V-A14B-LowNoise-Q3_K_M.bat

@REM call %~dp0text_encoders\umt5_xxl_fp8_e4m3fn_scaled.bat
call %~dp0text_encoders\umt5-xxl-enc-fp8_e4m3fn.bat
call %~dp0vae\Wan2_1_VAE_bf16.bat
call %~dp0vae_approx\taew2_1.bat

call %~dp0loras\Wan21Fast\lightx2v_I2V_14B_480p_cfg_step_distill_rank64_bf16.bat
