# my_bashrc
An online backup of my bashrc file;
## To add equivalent alias to windows PowerShell
1. Download the script to set alias;
2. Set windows variable $PROFILE to the script;
```shell
$PROFILE = "C:\xxxNewProfilePath\Microsoft.PowerShell_profile.ps1"
```	
3. Load the new profile, or open a new powershell window/tab.
```shell
. $PROFILE
```