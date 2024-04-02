# SMTP2GO PowerShell Module

This PowerShell module provides a simple interface for sending emails and text messages using the SMTP2GO service. It includes functions to set credentials, send emails, and send text messages via email-to-SMS gateways.

## Features

- Set SMTP2GO credentials once for the session.
- Send emails with customizable to, from, subject, and body parameters.
- Send text messages via supported email-to-SMS gateways for various carriers.

## Getting Started

### Prerequisites

- PowerShell 5.1 or later.
- An active SMTP2GO account with API credentials.

### Installation

1. Clone this repository or download the ZIP file.
2. Extract the files to a directory of your choice.
3. Import the module into your PowerShell session:

    ```powershell
    Import-Module /path/to/SMTP2GOModule/SMTP2GOModule.psm1
    ```

### Usage

1. Set your SMTP2GO credentials and, optionally, your phone number and carrier for text messaging:

    ```powershell
    Set-SMTP2GOCredentials -Username "your_username" -Password "your_password" -PhoneNumber "your_phone_number" -Carrier "your_carrier"
    ```

    Supported carriers include "ATT", "Verizon", "TMobile", and "Sprint". You can add more carriers to the `$CarrierEmailMappings` hashtable in the module.

2. Send an email:

    ```powershell
    Send-SMTP2GOEmail -To "recipient@example.com" -From "sender@example.com" -Subject "Test Email" -Body "This is a test email."
    ```

3. Send a text message:

    ```powershell
    Send-SMTP2GOTextMessage -Message "This is a test text message."
    ```

## Contributing

Contributions are welcome! Feel free to open an issue or submit a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
