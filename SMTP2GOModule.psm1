<#
.SYNOPSIS
SMTP2GO PowerShell Module for sending emails and text messages.

.DESCRIPTION
This module provides functions for sending emails and text messages using the SMTP2GO service. It allows setting SMTP2GO credentials and supports sending messages to various carriers' email-to-SMS gateways.

.OUTPUTS
The Send-SMTP2GOEmail function sends an email and does not produce any output.
The Send-SMTP2GOTextMessage function sends a text message via email and does not produce any output.

.NOTES
Written by: Matt Urbano

Change Log
V1.00, 04/02/24 - Initial version
#>

$script:SMTP2GOUsername = ""
$script:SMTP2GOPassword = ""
$script:SMTP2GOTxtMe = ""
$script:SMTP2GOCarrier = ""
$script:SMTP2GOFrom = ""

function Set-SMTP2GOCredentials {
    param (
        [string]$Username,
        [string]$Password,
        [string]$PhoneNumber,
        [string]$Carrier,
		[string]$From
    )
    $script:SMTP2GOUsername = $Username
    $script:SMTP2GOPassword = $Password
    $script:SMTP2GOTxtMe = $PhoneNumber
    $script:SMTP2GOCarrier = $Carrier
	$script:SMTP2GOFrom = $From
}
function Get-CarrierEmailMappings {
    return @{
        "ATT" = "txt.att.net"
        "Verizon" = "vtext.com"
        "TMobile" = "tmomail.net"
        "Sprint" = "messaging.sprintpcs.com"
        # Add more carriers as needed
    }
}

function Send-SMTP2GOTextMessage {
    param (
        [string]$Message
    )

    if (-not $script:SMTP2GOTxtMe -or -not $script:SMTP2GOCarrier) {
        Write-Error "Phone number or carrier not set. Use Set-SMTP2GOCredentials to set them."
        return
    }

    $carrierEmailMappings = Get-CarrierEmailMappings
    $toAddress = $script:SMTP2GOTxtMe + "@" + $carrierEmailMappings[$script:SMTP2GOCarrier]
    Send-SMTP2GOEmail -To $toAddress -From $script:SMTP2GOFrom -Subject "" -Body $Message
}
function Send-SMTP2GOEmail {
    param (
        [string]$To,
        [string]$From = $script:SMTP2GOFrom,
        [string]$Subject,
        [string]$Body
    )

    if (-not $script:SMTP2GOUsername -or -not $script:SMTP2GOPassword) {
        Write-Error "SMTP2GO credentials not set. Use Set-SMTP2GOCredentials to set them."
        return
    }

    $smtpServer = "mail.smtp2go.com"
    $smtpPort = 2525

    $mailMessage = New-Object System.Net.Mail.MailMessage($From, $To, $Subject, $Body)
    $smtpClient = New-Object Net.Mail.SmtpClient($smtpServer, $smtpPort)
    $smtpClient.EnableSsl = $true
    $smtpClient.Credentials = New-Object System.Net.NetworkCredential($script:SMTP2GOUsername, $script:SMTP2GOPassword)
    $smtpClient.Send($mailMessage)
}
Export-ModuleMember -Function Set-SMTP2GOCredentials, Send-SMTP2GOEmail, Send-SMTP2GOTextMessage, Get-CarrierEmailMappings
