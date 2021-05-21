Function UpdateConnectionString {
    Param([string]$config, [string]$connectionString) 
    Write-Host "Updating $config sql connection string..."
    $doc = (Get-Content $config) -as [Xml]
    $root = $doc.get_DocumentElement()
    $cns = $root.connectionStrings.SelectNodes("add")
    $cns.SetAttribute("connectionString", $connectionString)
    $doc.Save($config)
}
