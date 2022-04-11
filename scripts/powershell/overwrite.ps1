# overwrite a file
# example settings.ini file
# [Header]
# Author=Aaron
# Description=Settings file
# 
# [Data]
# XVal=0.00
# YVal=0.00
$testFile = $PSScriptRoot + "\settings.ini"

(Get-Content $testFile) -Replace '^XVal=.*', "XVal=0.34" | Set-Content $testFile
(Get-Content $testFile) -Replace '^YVal=.*', "YVal=7.60" | Set-Content $testFile