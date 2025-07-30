@echo off
chcp 65001 > NUL
cd /d %~dp0ComfyUI
call venv\Scripts\activate.bat
cmd /k
