# Replaces files with same naming convention (preserves anything with wild card)
Write-Host 'Enter file masks, use % for wildcard, anything wildcarded will not be replaced!'
$directory = Read-Host -Prompt 'Enter directory'
$inputFileMask = Read-Host -Prompt 'File Search Mask'
$inputFileMask = $inputFileMask -Replace '%', '*'
$replaceFileMask = Read-Host -Prompt 'Replacement Mask'
Write-Host "Searching $directory..."
Write-Host "Files with mask [$inputFileMask]: "

Get-ChildItem -Path $directory -Recurse -Filter $inputFileMask |
ForEach-Object {
    $currentName = $_.Name
    $newName = $currentName -replace $inputFileMask , $replaceFileMask

    Write-Host "Replacing - $currentName with $newName..."
    Rename-Item -Path $_.FullName -NewName $newName
}
Write-Host "Done!"