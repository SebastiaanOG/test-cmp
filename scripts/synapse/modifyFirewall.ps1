# pwsh modifyFirewall.ps1 -WorkspaceName <synapse-workspace> -action <create/delete>

[CmdletBinding()]
param(
    [parameter(mandatory)] [string] $WorkspaceName,
    [parameter(mandatory)] [string] $action
)

#Import needed modules
Import-Module Az.Synapse

$FirewallRuleName = "GitHubRunnerIP"

if ($action -eq 'create') {
    #Get the IP of the current Agent
    $PubIPSource = "ipinfo.io/ip"
    $currentIP = (Invoke-WebRequest -uri $PubIPSource -UseBasicParsing).content.TrimEnd()

    Write-Host "Adding firewall rule with name: $($FirewallRuleName), IP: $($currentIP)"
    New-AzSynapseFirewallRule -WorkspaceName $WorkspaceName -Name $FirewallRuleName -StartIpAddress $currentIP -EndIpAddress $currentIP
}
elseif ($action -eq 'delete') {
    Write-Host "Removing firewall rule with name: $($FirewallRuleName)"
    Remove-AzSynapseFirewallRule -WorkspaceName $WorkspaceName -Name $FirewallRuleName -Force
}
else {
    Write-Host "Doing nothing, i don't know action: $($action)"
}



