@echo off
chcp 65001 > NUL

call %~dp0EasyTools\Git\Git_SetPath.bat
if %ERRORLEVEL% neq 0 ( exit /b 1 )

pushd %~dp0EasyTools
echo.
echo git fetch origin https://github.com/Zuntan03/EasyTools
git fetch origin
if %ERRORLEVEL% neq 0 ( pause & popd & exit /b 1 )

echo git reset --hard origin/main
git reset --hard origin/main
if %ERRORLEVEL% neq 0 ( pause & popd & exit /b 1 )
popd

pushd %~dp0
echo.
echo git fetch origin https://github.com/Zuntan03/EasyWan22
git fetch origin
if %ERRORLEVEL% neq 0 ( pause & popd & exit /b 1 )

echo git reset --hard origin/main
git reset --hard origin/main
if %ERRORLEVEL% neq 0 ( pause & popd & exit /b 1 )
popd

call %~dp0EasyWan22\Setup.bat
if %ERRORLEVEL% neq 0 ( exit /b 1 )
