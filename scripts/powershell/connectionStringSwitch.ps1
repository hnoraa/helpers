###################################################################################################################################################################
connectionStringSwitch.ps1
Switches the connection string of an app.config or web.config file so you can switch between a local and remote database with out commenting out connection strings
###################################################################################################################################################################
Function Update-Config($connStr1, $connStr2) {
    $root = "C:\App\" # root of your visual studio solution/project
    $ext1 = "app.config"
    $ext2 = "App.config"
    $ext3 = "web.config"

    get-childitem $root -Recurse -Include $ext1, $ext2, $ext3 | foreach-object {
        $config = (get-content $_.FullName) -as [Xml]
        foreach($item in $config.configuration.connectionStrings.add) {
            # can update multiple files/connection strings with this
            # "KeyName" = the name of the connection string in the app.config file
            if($item.name -eq "KeyName") {
                $item.connectionString = $connStr1
                Write-Output $item " updated!"
            }

            # "KeyName" = the name of the connection string in the app.config file
            if($item.name -eq "KeyName") {
                $item.connectionString = $connStr2
                Write-Output $item " updated!"
            }
        }

        foreach($item in $config.connectionStrings.add) {
            if($item.name -eq "CoreDb") {
                $item.connectionString = $connStr1
                Write-Output $item " updated!"
            }

            if($item.name -eq "ElmahDb") {
                $item.connectionString = $connStr2
                Write-Output $item " updated!"
            }
        }

        $config.Save($_.FullName)
    }
}

$local = 0 # 1 - local

if($local -eq 1)
{
    $connStr1 = "data source=;initial catalog=db_name;persist security info=True;user id=;password=;MultipleActiveResultSets=True;App=EntityFramework"
    $connStr2 = "data source=;initial catalog=db_name;persist security info=True;user id=;password=;MultipleActiveResultSets=True;App=EntityFramework"

    Write-Output "Setting configs to local"
    Update-Config -connStr1 $connStr1 -connStr2 $connStr2
}
else
{
$connStr1 = "data source=;initial catalog=db_name;persist security info=True;user id=;password=;MultipleActiveResultSets=True;App=EntityFramework"
$connStr2 = "data source=;initial catalog=db_name;persist security info=True;user id=;password=;MultipleActiveResultSets=True;App=EntityFramework"

    Write-Output "Setting configs to remote"
    Update-Config -connStr1 $connStr1 -connStr2 $connStr2
}
