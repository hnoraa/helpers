# replace text in a file with the string specified in $replaceTextWith

$rootDirectory = "C:\tests"
$file = Join-Path -Path $rootDirectory -ChildPath "bin\file.txt"
$replaceTextWith = "replace current text with this"
$currentText = "This is the current text in the file"

(Get-Content $file) | Foreach-Object { $_ -replace $currentText, $replaceTextWith } | Set-Content $file
