Write-Output "Something went wrong..."

Start-Sleep -Seconds 5

Add-Type -AssemblyName System.Windows.Forms
$global:balmsg = New-Object System.Windows.Forms.NotifyIcon
$path = (Get-Process -id $pid).Path
$balmsg.Icon = [System.Drawing.Icon]::ExtractAssociatedIcon($path)
$balmsg.BalloonTipIcon = [System.Windows.Forms.ToolTipIcon]::Warning
$balmsg.BalloonTipText = ‘The system has been infected, gl I guess :3'
$balmsg.BalloonTipTitle = "Attention $Env:USERNAME!"
$balmsg.Visible = $true
$balmsg.ShowBalloonTip(20000)

Start-Sleep -Seconds 10

Add-Type -AssemblyName System.Windows.Forms
$global:balmsg = New-Object System.Windows.Forms.NotifyIcon
$path = (Get-Process -id $pid).Path
$balmsg.Icon = [System.Drawing.Icon]::ExtractAssociatedIcon($path)
$balmsg.BalloonTipText = ‘Windows Defender Antivirus found threats. Get details.'
$balmsg.BalloonTipTitle = "Threats found"
$balmsg.Visible = $true
$balmsg.ShowBalloonTip(20000)

python "C:\Users\XCAT\Documents\windows.py"
