$directory = Get-ChildItem -Path $PWD
foreach ($item in $directory) {
if ($item.PSIsContainer) {
$acl = Get-Acl -Path $item.FullName
}

Write-Host "Item: $($item.Name)"
Write-Host "ACL:"
$acl.Access | ForEach-Object {
Write-Host " FileSystemRights: $($_.FileSystemRights)"
Write-Host " "
}
}