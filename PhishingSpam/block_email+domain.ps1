Connect-ExchangeOnline

# Prompt for vars
    $domainlist = Read-Host -Prompt 'Domain(s) to add to Block list (press ENTER if none, use single space between entries): '
    $addresslist = Read-Host -Prompt 'Email address to add to Block list (press ENTER if none, use single space between entries): '
    $domains = $domainlist -split " "
    $addresses = $addresslist -split " "

# Add Domains to list, if any
    if (!$domainlist) {
            Write-Host "No domains to add...skipping"
        } else {
            Write-Host "Adding domain name(s) to Default spam Block list...."
            Set-HostedContentFilterPolicy -Identity Default -BlockedSenderDomains @{Add=$domains}
        }

# Add email addresses to list, if any
        if (!$addresslist) {
            Write-Host "No addresses to add...skipping"
        } else {
            Write-Host "Adding email address(es) to Default spam Block list...."
            Set-HostedContentFilterPolicy -Identity Default -BlockedSenders @{Add=$addresses}
        }

Disconnect-ExchangeOnline
