@echo off

set LIBS=user32.lib kernel32.lib gdi32.lib Winmm.lib

del /Q build\*.dll
del /Q build\*.exe
del /Q build\*.exp
del /Q build\*.lib
del /Q build\*.obj
del /Q build\*.pdb

pushd build
cl /Za /O2 /Tc..\code\main.c %LIBS%

popd
