$dir = "$HOME\.vscode-yan\User Data"
mkdir $dir 2> $null
Copy-Item "User" $dir -Force -Recurse

Get-Content "extensions.txt" | ForEach-Object {
    $name = $_
    if ($name -ne "yanxyz.my-vscode-extension") {
        # code installs an extension one time
        # code --install-extension alefragnani.Bookmarks codezombiech.gitignore
        .\code-yan.bat --install-extension $name
    }
}
