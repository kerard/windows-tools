$aUser = "Everyone"
$aRules = "FullControl"
$aInheritType = "ContainerInherit,ObjectInherit"
$aType = "Success,Failure"
$aAccessRule = New-Object System.Security.AccessControl.FileSystemAuditRule($aUser,$aRules,$aInheritType,"None",$aType)
$acl = Get-Acl "C:\audit-test"
$acl.SetAuditRule($aAccessRule)
$acl | Set-Acl "C:\audit-test"