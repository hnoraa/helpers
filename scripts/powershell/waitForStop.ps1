#####################################################
# Waits for Running & StopPending counts to equal 0
# And waits for Stopped to equal 1
#####################################################
$running = "Running" 
$stopPending = "StopPending"
$stopped = "Stopped"
do {
    $count1 = (Get-Service $service | ? {$_.status -eq $running}).count
    sleep -Milliseconds 600
    $count2 = (Get-Service $service | ? {$_.status -eq $stopPending}).count
    sleep -Milliseconds 600
    $count3 = (Get-Service $service | ? {$_.status -eq $stopped}).count
    sleep -Milliseconds 600
} until ($count1 -eq 0 -and $count2 -eq 0 -and $count3 -eq 1)

#####################################################
# While service is not stopped
#####################################################
$svc = Get-Service W3SVC
while($svc.State -ne 'Stopped')
{
	Start-Sleep -Seconds 1
  
  # gets the current status - if you don't do this, it will keep saying 'Running'
  $svc.Refresh()
}

#####################################################
# Using the service WaitForStatus() native method
# This waits for 5 seconds 
#####################################################
$svc = Get-Service -Name 'ServiceName'
$svc.WaitForStatus('Stopped','00:00:05')
