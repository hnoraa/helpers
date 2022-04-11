# append to a file
# $PSScriptRoot is cwd of this script
$outputFile = $PSScriptRoot + "\test.txt"
$today = [System.Math]::Round((date -UFormat %s),0)

# write to the file
"Write - $($today)" | Out-File -FilePath $outputFile -Append