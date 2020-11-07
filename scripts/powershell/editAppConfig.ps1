# update a connection string in the connection strings section of app.config
Function UpdateConnectionString {
    Param([string]$config, [string]$connectionString) 
    
    $doc = (Get-Content $config) -as [Xml]
    $root = $doc.get_DocumentElement()
    
    $cns = $root.connectionStrings.SelectNodes("add")
    $cns.SetAttribute("connectionString", $connectionString)
    
    $doc.Save($config)
}

Function UpdateAppSetting {
    Param([string]$config, [string]$name, [string]$value)
    
    $doc = (Get-Content $config) -as [Xml]
    
    $root = $doc.get_DocumentElement()
    $root.appSettings.add | ForEach-Object { If ($_.key -eq $name) { $_.value = $value } }
    
    $doc.Save($config)
}
