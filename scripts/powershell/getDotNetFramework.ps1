Function GetDotNetFramework {
    # get .NET framework version
    $regKey = Get-Childitem 'HKLM:\SOFTWARE\Microsoft\NET Framework Setup\NDP\v4\Full'
    $release = $regKey.GetValue("Release")

    Switch ($release) {
       {($_ -eq 393295) -or ($_ -eq 393297) -or ($_ -eq 394254) -or ($_ -eq 394271) -or ($_ -eq 394802) -or ($_ -eq 394806)} {
            # .NET 4.6
            $version = "NET46"
       }
       {($_ -eq 460798) -or ($_ -eq 460805) -or ($_ -eq 461308) -or ($_ -eq 461310) -or ($_ -eq 461808) -or ($_ -eq 461814)} {
            # .NET 4.7
            $version = "NET47"
       }
       {($_ -eq 528040) -or ($_ -eq 528049) -or ($_ -eq 528372)} {
            # .NET 4.8
            $version = "NET48"
       }
       Default {$version = "old"}
    }

    Return $version
}
