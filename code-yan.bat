@echo off
setlocal
set VSCODE_DEV=
set ELECTRON_RUN_AS_NODE=1
set "VSCODE_DIR=%ProgramFiles%\Microsoft VS Code"
set "VSCODE_PROFILE=%USERPROFILE%\.vscode-yan"
call "%VSCODE_DIR%\Code.exe" "%VSCODE_DIR%\resources\app\out\cli.js" --user-data-dir "%VSCODE_PROFILE%\User Data" --extensions-dir "%VSCODE_PROFILE%\extensions" %*
endlocal
