call runcrud
if "%ERRORLEVEL%" == "0" goto Chrome
echo.
echo runcrud.bat has errors - breaking work
goto fail

:Chrome
start chrome --new-window http://localhost:8080/crud/v1/task
if "%ERRORLEVEL%" == "0" goto end
echo Cannot open "http://localhost:8080/crud/v1/task"
goto fail

:fail
echo.
echo There were errors

:end
echo.
echo Work is finished