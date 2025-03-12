@echo off
setlocal

REM Define source and destination directories
set SOURCE_DIR=_site
set DEST_DIR=..\inxy-n.github.io

REM Copy contents from source to destination
xcopy /s /e /y "%SOURCE_DIR%\*" "%DEST_DIR%"

REM Change to the destination directory
cd "%DEST_DIR%"

REM Add changes to git
git add .

REM Commit changes with a message
git commit -m "Auto-update site content"

REM Push changes to the remote repository
git push origin gh-pages

endlocal