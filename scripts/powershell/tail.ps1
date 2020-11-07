Param(
    [Parameter(ValueFromRemainingArguments=$true)]
    $fileName
)
# create a shortcut on the desktop and modify the Target property to:
# C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -noexit -file C:\tail.ps1
# Get-Content .\Service_20190304.log -last 30 -wait
Get-Content $fileName -last 30 -wait