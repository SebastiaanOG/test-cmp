# pwsh modifyTriggers.ps1 -WorkspaceName <synapse-workspace> -action <disable/enable>

[CmdletBinding()]
param(
    [parameter(mandatory)] [string] $WorkspaceName,
    [parameter(mandatory)] [string] $action
)

#Import needed modules
Import-Module Az.Synapse

$triggers = Get-AzSynapseTrigger -WorkspaceName $WorkspaceName

# Get token for data plane
$token = Get-AzAccessToken -ResourceUrl https://dev.azuresynapse.net
$authHeader = @{
    'Content-Type'  = 'application/octet-stream'
    'Authorization' = 'Bearer ' + $token.Token
}

if ($action -eq 'disable') {
    Write-Host "Disabling triggers for workspace: $($WorkspaceName)"
    $triggers | ForEach-Object { Invoke-WebRequest -Method POST -Uri "https://${WorkspaceName}.dev.azuresynapse.net/triggers/$($_.name)/stop?api-version=2020-12-01" -Headers $authHeader }
}
elseif ($action -eq 'enable') {
    $triggers | ForEach-Object { Invoke-WebRequest -Method POST -Uri "https://${WorkspaceName}.dev.azuresynapse.net/triggers/$($_.name)/start?api-version=2020-12-01" -Headers $authHeader }
}
else {
    Write-Host "Doing nothing, i don't know action: $($action)"
}
