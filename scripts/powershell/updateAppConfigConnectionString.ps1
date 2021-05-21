Function UpdateConnectionString {
    Param(
        # the config file
        [string]$config, 
        
        # the new connection string
        [string]$connectionString
    )
    
    Write-Host "Updating $config sql connection string..."
    
    # load
    $doc = (Get-Content $config) -as [Xml]
    
    # update the connection string
    $root = $doc.get_DocumentElement()
    $cns = $root.connectionStrings.SelectNodes("add")
    $cns.SetAttribute("connectionString", $connectionString)
    
    # save
    $doc.Save($config)
}
