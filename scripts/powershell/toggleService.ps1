# Toggle a remote service
#
# Sample Config File:
#{
#    "server": "serverName",
#    "service": "serviceName"
#}
$configFile = 'serviceConfig.json'

# get config file
if(Test-Path -path $configFile) 
{
    Try
    {
        $json = (Get-Content $configFile | Out-String | ConvertFrom-Json)
        
        # toggle service
        if((get-service -ComputerName $json.server -Name $json.service).Status -eq 'Stopped')
        {
            Write-Host 'Start Service' $json.service 'on' $json.server
            (get-service -ComputerName $json.server -Name $json.service).Start()
        }
        else 
        {
            Write-Host 'Stop Service' $json.service 'on' $json.server
            (get-service -ComputerName $json.server -Name $json.service).Stop()
        }
    }
    Catch
    {
        Write-Host 'Config file not found!'
    }
}
else 
{
    Write-Host 'Config file not found!'
}