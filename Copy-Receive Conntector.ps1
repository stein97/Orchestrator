
Set-ReceiveConnector "NLKSEXCMBX04\Custom Applications" -RemoteIPRanges $ip.RemoteIPRanges
Set-ReceiveConnector "NLKSEXCMBX04\Custom Applications" -RemoteIPRanges $ip.MaxMessageSize

new-ReceiveConnector "NLKSEXCMBX04\Customs Software" -Usage Custom -binding "0.0.0.0:25" -RemoteIPRanges "10.16.16.171"
$ip = Get-ReceiveConnector "NLKVEXCMBX02\Customs Software"
Set-ReceiveConnector "NLKSEXCMBX04\Customs Software" -RemoteIPRanges $ip.RemoteIPRanges
Set-ReceiveConnector "NLKSEXCMBX04\Customs Software" -MaxMessageSize $ip.MaxMessageSize

$Conntector = "WebJet Server"
$copyConn = "NLKVEXCMBX02\WebJet Server"



new-ReceiveConnector -server NLKSEXCMBX04 -name $Conntector -Usage Custom -binding "0.0.0.0:25" -RemoteIPRanges "10.16.16.171"
$ip = Get-ReceiveConnector $copyConn
$Conntector1 = "NLKSEXCMBX04\$Conntector"
Set-ReceiveConnector $Conntector1 -RemoteIPRanges $ip.RemoteIPRanges
Set-ReceiveConnector $Conntector1 -MaxMessageSize $ip.MaxMessageSize
Set-ReceiveConnector $Conntector1 -PermissionGroups $ip.PermissionGroups
Set-ReceiveConnector $Conntector1 -AuthMechanism  $ip.AuthMechanism
