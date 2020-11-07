# Creates n amount of new files in the specified directory
Write-Host 'Create n amount of files in the specified directory'
$directory = Read-Host -Prompt 'Directory'
$length = Read-Host -Prompt 'Number of new Files'
$template = Read-Host -Prompt 'File name template'

Write-Host "Writing $length files to $directory"
for($i = 0; $i -lt $length; $i++) {
    $fName = "$template$($i + 1).txt"
    New-Item -Path $directory -Name $fName -Value (Get-Date).ToString() 
}
Write-Host "Done!"