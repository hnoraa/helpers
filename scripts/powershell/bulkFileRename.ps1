# Rename all files in current directory that match the regex and replace the specified text with $newText 
$currentText = "current"
$newText = "old"

Get-ChildItem -Filter "*current*" -Recurse | Rename-Item -NewName {$_.name -replace $currentText, $newText }
