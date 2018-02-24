@echo off

rem call is required as code is code.cmd
call code --list-extensions > extensions.txt

rem http://schinagl.priv.at/nt/ln/ln.html
rem rename ln.exe to wln.exe
wln.exe --excludedir workspaceStorage --copy %AppData%\Code\User .\User
