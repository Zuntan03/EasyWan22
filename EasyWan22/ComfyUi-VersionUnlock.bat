@echo off
chcp 65001 > NUL
if not exist "%~dp0ComfyUi-VersionUnlock.txt" ( copy NUL "%~dp0ComfyUi-VersionUnlock.txt" > NUL )
