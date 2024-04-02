# Import the SMTP2GOModule
Import-Module -Name SMTP2GOModule

Describe "SMTP2GOModule Tests" {

    It "Sets SMTP2GO credentials successfully" {
        Set-SMTP2GOCredentials -Username "test_user" -Password "test_pass"
        $script:SMTP2GOUsername | Should -Be "test_user"
        $script:SMTP2GOPassword | Should -Be "test_pass"
    }

    It "Sends an email successfully" {
        Mock Send-SMTP2GOEmail -Verifiable
        Send-SMTP2GOEmail -To "test@example.com" -From "test@example.com" -Subject "Test" -Body "Test"
        Assert-VerifiableMocks
    }

    It "Sends a text message successfully" {
        Mock Send-SMTP2GOTextMessage -Verifiable
        Send-SMTP2GOTextMessage -Message "Test message"
        Assert-VerifiableMocks
    }
}
