@echo off
start "" cmd /c "npm install && npm install sass && npm run dev"
timeout /t 10
:: Extract the URL from the log file
set "url="
for /f "tokens=*" %%i in ('findstr /r /c:"http://localhost:[0-9]*" run_dev.log') do (
    set "url=%%i"
    goto :found_url
)

:: If no URL was found, use a default
echo Could not find dynamic URL in run_dev.log. Using default URL.
set "url=http://localhost:5173/"

:found_url
:: Open the extracted URL
echo Opening website at %url%...
start %url%