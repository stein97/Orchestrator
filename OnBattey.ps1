$strComputer = "." 
$colItems = get-wmiobject -class "Win32_Battery" -namespace "root\CIMV2" -computername $strComputer 
$word1 = "Availability: "
$word2 = "Battery Recharge Time: "
$word3 = "Battery Status: "
$word4 = "Description: "
$word5 = "Estimated Charge Remaining: "
$word6 = "Estimated Run Time: "
$word7 = "Last Error Code: " 
$word8 = "Maximum Recharge Time: "
$word9 = "Status: " 
$word10 = "Time On Battery: " 
$word11 = "Time To Full Charge: " 
$br = "</BR>"      

if ($colItems.Availability -eq "3") {
foreach ($objItem in $colItems) { 
      $Bat1 = $objItem.Availability 
      $Bat2 = $objItem.BatteryRechargeTime 
      $Bat3 = $objItem.BatteryStatus 
      $Bat4 = $objItem.Description 
      $Bat5 = $objItem.EstimatedChargeRemaining 
      $Bat6 = $objItem.EstimatedRunTime 
      $Bat7 = $objItem.LastErrorCode 
      $Bat8 = $objItem.MaxRechargeTime 
      $Bat9 = $objItem.Status 
      $Bat10 = $objItem.TimeOnBattery 
      $Bat11 = $objItem.TimeToFullCharge 
 }}
else {write-host "NO"}

$word1 + $Bat1 + $br | out-file c:\temp\battery.txt
$word2 + $Bat2 + $br | out-file c:\temp\battery.txt -Append
$word3 + $Bat3 + $br | out-file c:\temp\battery.txt -Append
$word4 + $Bat4 + $br | out-file c:\temp\battery.txt -Append
$word5 + $Bat5 + $br | out-file c:\temp\battery.txt -Append
$word6 + $Bat6 + $br | out-file c:\temp\battery.txt -Append
$word7 + $Bat7 + $br | out-file c:\temp\battery.txt -Append
$word8 + $Bat8 + $br | out-file c:\temp\battery.txt -Append
$word9 + $Bat9 + $br | out-file c:\temp\battery.txt -Append
$word10 + $Bat10 + $br | out-file c:\temp\battery.txt -Append
$word11 + $Bat11 + $br | out-file c:\temp\battery.txt -Append

Del c:\temp\battery.htm
Rename-Item C:\temp\battery.txt battery.htm

$EmailBody1= get-content "c:\temp\battery.htm"
$SmtpClient = new-object system.net.mail.smtpClient
$MailMessage = New-Object system.net.mail.mailmessage
$SmtpClient.Host = "MBX01"
$mailmessage.IsBodyHTML = $true 
$mailmessage.from = ("stein@olle.com")
$mailmessage.To.add("stein@olle.com")
$mailmessage.Subject = "Test HTML"
$mailmessage.Body = $EmailBody1
$mailmessage.Headers.Add("message-id", "<3BD50098E401463AA228377848493927-1>")
$smtpclient.Send($mailmessage)
