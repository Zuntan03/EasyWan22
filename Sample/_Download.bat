@echo off
chcp 65001 > NUL
set CURL_CMD=C:\Windows\System32\curl.exe -kL
pushd %~dp0

echo.
echo %CURL_CMD% -H "Cache-Control: no-cache" -O "https://yyy.wpx.jp/EW22/S/_SampleList.txt"
%CURL_CMD% -H "Cache-Control: no-cache" -O "https://yyy.wpx.jp/EW22/S/_SampleList.txt"
if %ERRORLEVEL% neq 0 ( pause & popd & exit /b 1 )

for /f "tokens=*" %%f in (_SampleList.txt) do (
	if not exist "%%~nxf" (
		echo.
		echo %CURL_CMD% -O "https://yyy.wpx.jp/EW22/S/%%f"
		%CURL_CMD% -O "https://yyy.wpx.jp/EW22/S/%%f"
		if %ERRORLEVEL% neq 0 ( pause & popd & exit /b 1 )
	)
)
popd
