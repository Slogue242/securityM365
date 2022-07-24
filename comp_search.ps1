$adminUsername = Read-Host -Prompt 'Admin Email: '

Connect-IPPSSession -UserPrincipalName $adminUsername

$policyName = Read-Host -Prompt 'Enter Content Search Name (Hint: add incident ticket number): '
$senderEmail = Read-Host -Prompt 'Email Address to purge: '
$senderSubject = Read-Host -Prompt 'Email subject to purge: '


$Search = New-ComplianceSearch -Name $policyName -ExchangeLocation All -ContentMatchQuery '(From:$senderEmail) AND (Subject:$senderSubject)'
Start-ComplianceSearch -Identity $Search.Identity

function purgingFunc {
Write-Host "purging"
}

while(($inp = Read-Host -Prompt "Select a command") -ne "Q"){
switch($inp){
   S {"File will be deleted"}
   P {purgingFunc}
   Q {"End"}
   default {"Invalid entry"}
   }
}