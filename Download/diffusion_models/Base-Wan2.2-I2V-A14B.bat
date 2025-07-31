@echo off
chcp 65001 > NUL

call %~dp0Base\Wan2.2-I2V-A14B-HighNoise-Q3_K_M.bat
call %~dp0Base\Wan2.2-I2V-A14B-LowNoise-Q3_K_M.bat
call %~dp0Base\Wan2.2-I2V-A14B-HighNoise-Q4_K_M.bat
call %~dp0Base\Wan2.2-I2V-A14B-LowNoise-Q4_K_M.bat
call %~dp0Base\Wan2.2-I2V-A14B-HighNoise-Q6_K.bat
call %~dp0Base\Wan2.2-I2V-A14B-LowNoise-Q6_K.bat
call %~dp0Base\Wan2.2-I2V-A14B-HighNoise-Q8_0.bat
call %~dp0Base\Wan2.2-I2V-A14B-LowNoise-Q8_0.bat
