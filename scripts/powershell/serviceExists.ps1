Function ServiceExists {
    Param(
        # the service name
        [string]$serviceName
    )

    If (Get-Service $serviceName -ErrorAction SilentlyContinue) {
        If ((Get-Service $serviceName).Status -eq 'Running') {
            Stop-Service $serviceName
            Write-Host "Found Service:" $serviceName ", stopping..."
            Return 1
        }
    } Else {
        Write-Host "Service:" $serviceName " not found..."
        Return 0
    }
}
