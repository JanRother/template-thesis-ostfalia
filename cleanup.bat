@echo off

set cleanup_list_file=.\cleanup-files
set cleanup_directory=.
set /A move_artifacts=1

if "%1" neq "" (
    if "%1" neq "--no-move" (
        set cleanup_directory=%1
    ) else (
        set move_artifacts=0
    )
)

if "%2" neq "" (
    if "%2" neq "--no-move" (
        set cleanup_directory=%2
    ) else (
        set move_artifacts=0
    )
)

echo SCRIPT: CLEANUP
echo Cleaning up build generated files from '%cleanup_list_file%'.
echo Directory: %cleanup_directory%
echo.

for /f "tokens=*" %%a in (%cleanup_list_file%) do (
    if exist "%cleanup_directory%\%%a" (
        del /q /s "%cleanup_directory%\%%a"
    )
)

if %move_artifacts% equ 1 (
    echo.
    echo Moving all generated artifacts to the root directory.
    echo.

    move /y %cleanup_directory%\*.pdf .
)

echo.
echo Cleaned up after build.
echo Done.
