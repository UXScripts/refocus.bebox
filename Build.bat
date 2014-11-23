@echo off
ECHO ------------------------------
echo Creating reFocus Build Folder
rmdir BUILD /S /Q
md BUILD

ECHO ------------------------------
ECHO Building Skin Directory...
xcopy "720p" "BUILD\skin.refocus.bebox\720p" /E /Q /I /Y
xcopy "backgrounds" "BUILD\skin.refocus.bebox\backgrounds" /E /Q /I /Y
xcopy "colors" "BUILD\skin.refocus.bebox\colors" /E /Q /I /Y
xcopy "fonts" "BUILD\skin.refocus.bebox\fonts" /E /Q /I /Y
xcopy "language" "BUILD\skin.refocus.bebox\language" /E /Q /I /Y
xcopy "language\Bulgarian" "BUILD\skin.refocus.bebox\language\Bulgarian" /E /Q /I /Y
xcopy "language\Catalan" "BUILD\skin.refocus.bebox\language\Catalan" /E /Q /I /Y
xcopy "language\Czech" "BUILD\skin.refocus.bebox\language\Czech" /E /Q /I /Y
xcopy "language\Danish" "BUILD\skin.refocus.bebox\language\Danish" /E /Q /I /Y
xcopy "language\Dutch" "BUILD\skin.refocus.bebox\language\Dutch" /E /Q /I /Y
xcopy "language\English" "BUILD\skin.refocus.bebox\language\English" /E /Q /I /Y
xcopy "language\Finnish" "BUILD\skin.refocus.bebox\language\Finnish" /E /Q /I /Y
xcopy "language\French" "BUILD\skin.refocus.bebox\language\French" /E /Q /I /Y
xcopy "language\Galician" "BUILD\skin.refocus.bebox\language\Galician" /E /Q /I /Y
xcopy "language\German" "BUILD\skin.refocus.bebox\language\German" /E /Q /I /Y
xcopy "language\Italian" "BUILD\skin.refocus.bebox\language\Italian" /E /Q /I /Y
xcopy "language\Korean" "BUILD\skin.refocus.bebox\language\Korean" /E /Q /I /Y
xcopy "language\Lithuanian" "BUILD\skin.refocus.bebox\language\Lithuanian" /E /Q /I /Y
xcopy "language\Polish" "BUILD\skin.refocus.bebox\language\Polish" /E /Q /I /Y
xcopy "language\Portuguese (Brazil)" "BUILD\skin.refocus.bebox\language\Portuguese (Brazil)" /E /Q /I /Y
xcopy "language\Portuguese (Portugal)" "BUILD\skin.refocus.bebox\language\Portuguese (Portugal)" /E /Q /I /Y
xcopy "language\Romanian" "BUILD\skin.refocus.bebox\language\Romanian" /E /Q /I /Y
xcopy "language\Swedish" "BUILD\skin.refocus.bebox\language\Swedish" /E /Q /I /Y
xcopy "language\Spanish" "BUILD\skin.refocus.bebox\language\Spanish" /E /Q /I /Y
xcopy "playlists" "BUILD\skin.refocus.bebox\playlists" /E /Q /I /Y
xcopy "shortcuts" "BUILD\skin.refocus.bebox\shortcuts" /E /Q /I /Y
xcopy "sounds" "BUILD\skin.refocus.bebox\sounds" /E /Q /I /Y
xcopy "*.xml" "BUILD\skin.refocus.bebox\" /Q /I /Y
xcopy "*.txt" "BUILD\skin.refocus.bebox\" /Q /I /Y
xcopy "*.png" "BUILD\skin.refocus.bebox\" /Q /I /Y
xcopy "*.jpg" "BUILD\skin.refocus.bebox\" /Q /I /Y
xcopy "*.md" "BUILD\skin.refocus.bebox\" /Q /I /Y

ECHO ------------------------------
ECHO Creating XBT File...
START /B /WAIT TexturePacker -dupecheck -input media\ -output media\Textures.xbt

xcopy "media\*.xbt" "BUILD\skin.refocus.bebox\media\" /Q /I /Y

REM ECHO ------------------------------
REM ECHO Cleaning Up...
REM del "media\*.xbt"

REM ECHO ------------------------------
REM ECHO Copying Image Files...
REM xcopy "media\*.*" "BUILD\skin.refocus.bebox\media\" /E /Q /I /Y

echo Build Complete - Scroll Up to check for errors.
pause
