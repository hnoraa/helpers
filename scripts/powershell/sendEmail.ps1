# send an email
$from = test@test.com
$to = test2@test.com
$subject = "Hi, I am an email"
$body = "This is not SPAM!!!"
$attachment = "attachment.txt"
$password = "" # this can be blank
$smtp = "<IP ADDRESS>"
$port = "25"

# send with attachment
Send-MailMessage -From $from -To $to -Subject $subject -SmtpServer $smtp -Body $body -Port $port -Attachment $attachment

# send without attachment
Send-MailMessage -From $from -To $to -Subject $subject -SmtpServer $smtp -Body $body -Port $port
