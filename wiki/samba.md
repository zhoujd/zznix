Samba
=====

## SMB in Windows 11 24H2 may fail

```
## https://learn.microsoft.com/zh-cn/windows-server/storage/file-server/smb-signing?tabs=powershell
## Open PowerShell win admin
## Enable SMB signature
> Set-SmbClientConfiguration -RequireSecuritySignature $true
> Set-SmbServerConfiguration -RequireSecuritySignature $true

## SMB signature status
> Get-SmbClientConfiguration | FL RequireSecuritySignature
> Get-SmbServerConfiguration | FL RequireSecuritySignature
```
