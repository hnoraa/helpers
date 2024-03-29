Function UpdateAppSetting {
    Param(
        # the app.config file
        [string]$config, 
        
        # the app setting to change
        [string]$name, 
        
        # the new value
        [string]$value
    )
    Write-Host "Updating $config setting $name to $value..."
    
    # load
    $doc = (Get-Content $config) -as [Xml]
    
    # load the root of the app config and replace the value for the given key
    $root = $doc.get_DocumentElement()
    $root.appSettings.add | ForEach-Object { If ($_.key -eq $name) { $_.value = $value } }
    
    # save
    $doc.Save($config)
}
