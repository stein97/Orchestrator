$acl = get-acl "\`d.T.~Ed/{0FFE6E93-2182-4081-B0B3-7C9DD2B1F871}.Folder\`d.T.~Ed/"
$UserACL = "SCHOLLE\\`d.T.~Ed/{70D59E59-DB18-4D99-B7FE-FF591376E64C}.{F857D2AB-8976-40C1-B25A-6965985B8541}\`d.T.~Ed/"
$arguments = "$UserACL","Modify", "3", "None", "Allow"
$accessRule = New-Object System.Security.AccessControl.FileSystemAccessRule $arguments
$acl.SetAccessRule($accessRule)
$acl | Set-Acl "\`d.T.~Ed/{0FFE6E93-2182-4081-B0B3-7C9DD2B1F871}.Folder\`d.T.~Ed/"