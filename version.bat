@echo off
SETLOCAL

set ver=v0.3.0

set toolFile=%~dp0tools


for /F "tokens=1,2 delims==" %%A in (%toolFile%) do (
    set %%A=%%B
)

rem User forgot to specify the program or a flag
if "%1"=="" (
    echo Usage: version ^<program^>
    goto END
)


rem Display help
if "%1"=="-h" (
    echo version displays the versions of programs you have installed.
    echo.
    echo Usage:
    echo   version ^<program^>    display version of program
    echo                        ^(if known and installed^)
    echo   version -h           display this help
    echo   version -c           display count of known programs
    echo   version -v           display version of version
    echo                        ^(yes, ^'version version^' also works!^)
    goto END
)

rem Display recognized program count
if "%1"=="-c" (
    set /a cnt=0
    for /f %%a in ('type "%toolFile%"^|find "" /v /c') do set /a cnt=%%a
    echo I know how to find the versions of %count% programs!
    goto END
)

rem Display version of version
if "%1"=="-v" (
    echo %ver%
    goto END
)


rem User does not have that program installed
where %1 2>NUL >NUL
IF %ERRORLEVEL% NEQ 0 (
    echo %1 does not seem to be installed
    goto END
)

rem Display the version if we know about the tool
SETLOCAL ENABLEDELAYEDEXPANSION
set vers_arg=!tools_%1!

if "%vers_arg%"=="" (
    echo I don't know how to find the version of ^'%1^'.
    echo If you figure it out, let me know at https://github.com/bit101/version
) else (
    call %1 !tools_%1!
)

:END