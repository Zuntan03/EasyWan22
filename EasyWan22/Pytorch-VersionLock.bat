@echo off
chcp 65001 > NUL
if exist "%~dp0Pytorch-VersionUnlock.txt" ( del "%~dp0Pytorch-VersionUnlock.txt" > NUL )
