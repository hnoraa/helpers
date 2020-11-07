# attempt to connect to a sql server
$serverInstance = Read-Host "Enter the SQL server instance"
$serverUser = Read-Host "Enter the SQL user account"
$serverPasswordMasked = Read-Host "Enter the SQL password for" $serverUser -AsSecureString
$serverPassword = [Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($serverPasswordMasked))

try {
    $testConnectionString = 'Data Source={0};Database=master;User ID={1};Password={2}' -f $serverInstance, $serverUser, $serverPassword
    Write-Host "Connecting to " $serverInstance " ..."
    $sqlConnection = New-Object System.Data.SqlClient.SqlConnection $testConnectionString
    $sqlConnection.Open()
}
catch {
    # kill script, cannot connect
    Write-Host "Unable to connect to SQL Sever. Try again with another username/password" -ForegroundColor "yellow" -BackgroundColor "black"
    Exit
}
finally {
    # connection was successful, close connection
    Write-Host "Connection to " $serverInstance " was successful."
    $sqlConnection.Close()
}
