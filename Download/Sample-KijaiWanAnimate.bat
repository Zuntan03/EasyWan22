@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\EasyTools
call %EASY_TOOLS%\Civitai\Civitai_ApiKey.bat
@REM if %ERRORLEVEL% neq 0 ( exit /b 1 )

call %~dp0clip_vision\clip_vision_h.bat

call %~dp0diffusion_models\Animate\Wan2_2_Animate_14B_Q4_K_M.bat

call %~dp0text_encoders\umt5-xxl-enc-fp8_e4m3fn.bat

call %~dp0vae\Wan2_1_VAE_bf16.bat

call %~dp0loras\Animate\WanAnimate_relight_lora_fp16.bat
call %~dp0loras\Wan21Fast\lightx2v_I2V_14B_480p_cfg_step_distill_rank64_bf16.bat
