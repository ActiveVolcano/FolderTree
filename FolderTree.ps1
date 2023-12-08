param ($pathTree, $pathCSV)

Get-ChildItem -Path $pathTree -Recurse |
ForEach-Object {$_} | 
Select-Object -Property Directory,Name,Length | 
Where-Object {$_.Directory -ne $null} | 
Sort-Object -Property Directory,Name |
Export-Csv -Encoding UTF8 -Force -NoTypeInformation $pathCSV
