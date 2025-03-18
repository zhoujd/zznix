Game Bar
========

## Remove Game Bar on Window 11

```
## Open a new PowerShell window as administrator
PS C:\>

## Current User
PS C:\> Get-AppxPackage Microsoft. XboxGamingOverlay | Remove-AppxPackage

## All Users
PS C:\> Get-AppxPackage -AllUsers Microsoft.XboxGamingOverlay | Remove-AppxPackage
## Reboot
```
