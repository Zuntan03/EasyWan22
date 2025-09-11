@echo off
chcp 65001 > NUL
if exist "%~dp0ComfyUi-VersionUnlock.txt" ( del "%~dp0ComfyUi-VersionUnlock.txt" > NUL )
