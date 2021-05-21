Function UpdateAppSetting {
    Param([string]$config, [string]$name, [string]$value) 
    Write-Host "Updating $config setting $name to $value..."
    $doc = (Get-Content $config) -as [Xml]
    $root = $doc.get_DocumentElement()
    $root.appSettings.add | ForEach-Object { If ($_.key -eq $name) { $_.value = $value } }
    $doc.Save($config)
}
