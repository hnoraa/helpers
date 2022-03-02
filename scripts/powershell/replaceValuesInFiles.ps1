$newString = "oldStringToReplace"
$oldString = "ThisIsTheNewString"
$dir = "C:\Your\Directory"
$filter = "*.bat"

# doesn't recurse but you can set -Recurse in Get-ChildItem
Get-ChildItem -Path $dir -Filter $filter | ForEach-Object {
    Write-Host "Searching: $($_.Name) for old collective name: $($oldString)"

    # remove read only
    Set-ItemProperty $dir\$_ -Name IsReadOnly -Value $false

    # replace the text if it exists
    If($_ | Select-String $oldString) {
        Write-Host "$($oldString) found in file!"
        (Get-Content $_) | ForEach-Object {$_ -Replace $oldString, $newString} | Set-Content $_
    }

    # set back to read only
    Set-ItemProperty $dir\$_ -Name IsReadOnly -Value $true
} 
