Function GetOsArchitecture {
    Return If ([Environment]::Is64BitOperatingSystem -eq $true) {"x64"} Else {"x86"}
}
