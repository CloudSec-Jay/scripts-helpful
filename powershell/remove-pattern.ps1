#removes a given regex pattern from a file, default is remove "."

Write-Host "Script begining"

$file = Read-Host -Prompt "Whats is the name of your file?"

$filepath = Resolve-Path -Path ".\$file"
$stringToRemovePattern = '\.'

$filecontent = Get-Content -Path $filepath -Raw 

$modifiedcontent = $filecontent -replace $stringToRemovePattern, '' 

$modifiedContent | Set-Content -Path $filePath -Encoding UTF8

Write-Host "Script Complete"
