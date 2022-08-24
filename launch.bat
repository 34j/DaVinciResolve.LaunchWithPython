@echo off
py -m venv venv
set PYTHONHOME=%LOCALAPPDATA%\Programs\Python\Python310
set PATH=%PATH%;%PYTHONHOME%
set RESOLVE_SCRIPT_API=%PROGRAMDATA%\Blackmagic Design\DaVinci Resolve\Support\Developer\Scripting
set RESOLVE_SCRIPT_LIB=C:\Program Files\Blackmagic Design\DaVinci Resolve\fusionscript.dll
set PYTHONPATH=%PYTHONPATH%;%PYTHONHOME%\Lib\site-packages;%cd%\venv\Lib\site-packages;%RESOLVE_SCRIPT_API%\Modules
"C:\Program Files\Blackmagic Design\DaVinci Resolve\Resolve.exe"
