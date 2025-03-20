Samba
=====

## SMB in Windows 11 24H2 may fail

```
## https://learn.microsoft.com/zh-cn/windows-server/storage/file-server/smb-signing?tabs=powershell
## Open PowerShell win admin, then run command lines and input "Y" to confirm
PS C:\> Set-SmbClientConfiguration -RequireSecuritySignature $true
PS C:\> Set-SmbServerConfiguration -RequireSecuritySignature $true

## SMB signature status (true: enabled, false: disabled)
PS C:\> Get-SmbClientConfiguration | FL RequireSecuritySignature
PS C:\> Get-SmbServerConfiguration | FL RequireSecuritySignature
```
