Connect-AzureAD
New-AzureADGroup -DisplayName "Default_Intune" -MailEnabled $false -SecurityEnabled $true -MailNickName "NotSet"
New-AzureADGroup -DisplayName "Test_Intune" -MailEnabled $false -SecurityEnabled $true -MailNickName "NotSet"