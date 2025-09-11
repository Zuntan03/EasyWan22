@echo off
chcp 65001 > NUL
if not exist "%~dp0Pytorch-VersionUnlock.txt" ( copy NUL "%~dp0Pytorch-VersionUnlock.txt" > NUL )
