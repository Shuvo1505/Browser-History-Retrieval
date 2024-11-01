@echo off

rem ------------------------------------------------------
rem Description: Browser History Retrieval Script
rem Developer: Purendu Guha
rem ------------------------------------------------------

echo.
echo ------------------------------------------------------
echo Description: Browser History Retrieval Script
echo Platform: Windows
echo Developer: Purendu Guha
echo ------------------------------------------------------
echo.
echo Please select the browser to retrieve history:
echo 1. Google Chrome
echo 2. Brave Browser
echo 3. Opera Browser

echo.
rem Taking input from console
set /p choice="[+] Enter your choice: "

rem Declaring sqlite setup path
set sqlitePath=C:\Development\sqlite-tools-win-x64-3460100\sqlite3.exe

rem Implementing switch-case
if "%choice%"=="1" (
    set historyDbPath="C:\Users\%USERNAME%\AppData\Local\Google\Chrome\User Data\Default\History"
    set outputFile=chrome_history.txt
) else if "%choice%"=="2" (
    set historyDbPath="C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\User Data\Default\History"
    set outputFile=brave_history.txt
) else if "%choice%"=="3" (
    set historyDbPath="C:\Users\%USERNAME%\AppData\Roaming\Opera Software\Opera Stable\Default\History"
    set outputFile=opera_history.txt
) else (
    echo.
    echo Invalid choice. Script terminated.
    echo.
    pause
    exit /b
)

rem Query for fetching data from database
set sqlQuery="SELECT url, title, visit_count, datetime((last_visit_time / 1000000) - 11644473600, 'unixepoch', 'localtime') AS formatted_last_visit_time FROM urls ORDER BY last_visit_time DESC;"
echo.
echo Retrieving browser history...

rem Executing the query
%sqlitePath% %historyDbPath% %sqlQuery% > %outputFile%

if errorlevel 1 (
    echo.
    echo Failed to retrieve browser history!
    echo.
    pause
    exit /b
)

echo.
echo Your browser history has been written to %outputFile%
echo.
echo [ You can convert this into an Excel file by following the instructions in the "README.md" file. ]
echo.
pause
