# Writes all files (by name) in current directory to a text file
$output = 'files.txt'

Get-ChildItem | Select-Object -ExpandProperty Name > $output

# This command can also be used to get the same results
ls | select -exp Name > $output
