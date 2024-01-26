$msg = $args[0]
$ComputerName = "192.168.70.229"
$User = "Student"
$Password = "``"
$SecPasswd = ConvertTo-SecureString $Password -AsPlainText -Force
$Credential = New-Object System.Management.Automation.PSCredential($User, $secpasswd)

New-SSHSession -ComputerName $ComputerName -Credential $Credential

Invoke-SSHCommand -ComputerName $ComputerName -Command "msg $User $msg"
Remove-SSHSession -ComputerName $ComputerName
