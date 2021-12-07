#
# Windows PowerShell script for AD DS Deployment
#
#Rename-Computer homedc01
Install-WindowsFeature AD-Domain-Services -IncludeManagementTools

Import-Module ADDSDeployment
Install-ADDSForest `
-CreateDnsDelegation:$false `
-DatabasePath "C:\Windows\NTDS" `
-DomainMode "WinThreshold" `
-DomainName "home.local" `
-DomainNetbiosName "HOME" `
-ForestMode "WinThreshold" `
-InstallDns:$true `
-LogPath "C:\Windows\NTDS" `
-NoRebootOnCompletion:$false `
-SysvolPath "C:\Windows\SYSVOL" `
-Force:$true

#Install-WindowsFeature DHCP –IncludeManagementTools
#Install-WindowsFeature DNS -IncludeManagementTools
