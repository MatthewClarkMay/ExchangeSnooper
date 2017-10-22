## Author: Matt May
## Make sure user has read/write permission on all mailboxes AND import/export mailbox permission

## Parameter validation
[cmdletbinding()]
param(
      [Parameter(Mandatory=$true)][string]$From,
      [Parameter(Mandatory=$true)][string]$Subject,
      [Parameter(Mandatory=$false)][string]$Body,
      [Parameter(Mandatory=$false)][string]$VictimMailbox,
      [Parameter(Mandatory=$false)][string]$LogMailbox,
      [Parameter(Mandatory=$false)][string]$LogFolder,
      [Parameter(Mandatory=$false)][switch]$Force
      )

## Load Exchange Management Shell & Connect to server
.$env:ExchangeInstallPath\bin\RemoteExchange.ps1;
Connect-ExchangeServer -auto;

$SearchQuery = "From:$From AND Subject:$Subject"

If ($Body) {
    $SearchQuery = "$SearchQuery AND Body:$Body"
}

echo "Using the following search query: $SearchQuery"

## Log Testing
#Get-Mailbox $VictimMailbox | Search-Mailbox -SearchQuery $SearchQuery -TargetMailbox $LogMailbox -TargetFolder $LogFolder -LogOnly -LogLevel full
#Get-Mailbox -ResultSize unlimited | Search-Mailbox -SearchQuery $SearchQuery -TargetMailbox $LogMailbox -TargetFolder $LogFolder -LogOnly -LogLevel full

## Delete Testing
#Get-Mailbox $VictimMailbox | Search-Mailbox -SearchQuery $SearchQuery -DeleteContent
#Get-Mailbox -ResultSize unlimited | Search-Mailbox -SearchQuery $SearchQuery -DeleteContent

If ($Force.IsPresent) {
    Get-Mailbox $VictimMailbox | Search-Mailbox -SearchQuery $SearchQuery -DeleteContent -Force
} Else {
    Get-Mailbox $VictimMailbox | Search-Mailbox -SearchQuery $SearchQuery -DeleteContent
}

echo "Process Complete!"
