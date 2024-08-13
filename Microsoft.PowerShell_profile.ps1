# PowerShell specific aliases and functions

# Colorize the ls output (Note: Windows does not have an equivalent 'ls' command by default, so we'll use 'Get-ChildItem' instead)

function ls { Get-ChildItem }

# List in reverse order by time, human-readable format (similar to 'ls -lrth')
function lr { Get-ChildItem | Sort-Object LastWriteTime | Format-Table -Property Mode,LastWriteTime,Length,Name }

# List directories only
function ld { Get-ChildItem -Directory }

# Long listing of directories only
function lld { Get-ChildItem -Directory | Format-Table -Property Mode,LastWriteTime,Length,Name }

# Less (Note: 'less' does not have a direct equivalent, but 'more' is similar)
Set-Alias le more

# Use a long listing format
function ll { Get-ChildItem -Force }

# SSH command (Note: PowerShell does not have a built-in 'ssh' command, but if you have OpenSSH installed, this should work)
Set-Alias sth "ssh -X 10.53.131.113"

# Show hidden files
function l. { Get-ChildItem -Force }

# Fix 'cd..' command
Set-Alias cd.. 'cd ..'

# Quick ways to move up directories
Set-Alias .. 'cd ..'
Set-Alias ... 'cd ..\..\..'
Set-Alias .... 'cd ..\..\..\..'
Set-Alias ..... 'cd ..\..\..\..\..'
Set-Alias .4 'cd ..\..\..\..\..'
Set-Alias .5 'cd ..\..\..\..\..\..'

# Colorize the grep command output (PowerShell equivalent would use 'Select-String', but it doesn't colorize by default)
Set-Alias grep Select-String
Set-Alias egrep Select-String
Set-Alias fgrep Select-String

# Interactive remove (Note: PowerShell's Remove-Item does not have a direct '-i' equivalent, so careful use is recommended)
function rm {Remove-Item -Confirm}

# Confirmation for move, copy, and link (PowerShell's equivalent)
function mv {Move-Item -Confirm}
function cp {Copy-Item -Confirm}
function ln {New-Item -ItemType SymbolicLink -Confirm}

# Preservation of root (There is no direct equivalent to '--preserve-root' in PowerShell, so caution is advised)
Set-Alias chown 'Write-Host "PowerShell does not support chown"'
Set-Alias chmod 'Write-Host "PowerShell does not support chmod"'
Set-Alias chgrp 'Write-Host "PowerShell does not support chgrp"'

# Become root (Equivalent in PowerShell would be starting a session as Administrator)
Set-Alias root 'Start-Process PowerShell -Verb RunAs'
Set-Alias su 'Start-Process PowerShell -Verb RunAs'
