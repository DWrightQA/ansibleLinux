$state = Get-AnsibleParam -obj $params -name "state" -ValidateSet "Present","Absent" -resultobj $resultobj -failifempty $true
$name = Get-AnsibleParam -obj $params -name "name" -resultobj $resultobj -failifempty $true
$type = Get-AnsibleParam -obj $params -name "type" -ValidateSet "A","CNAME" -resultobj $resultobj -failifempty $true
$ip = Get-AnsibleParam -obj $params -name "IP" -resultobj $resultobj -failifempty $false

