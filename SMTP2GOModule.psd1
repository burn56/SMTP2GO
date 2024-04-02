#
# Module manifest for module 'SMTP2GOModule'
#
# Generated by: Matt Urbano
#
# Generated on: 04/02/24
#

@{

# Script module or binary module file associated with this manifest.
RootModule = 'SMTP2GOModule.psm1'

# Version number of this module.
ModuleVersion = '1.0.0'

# Supported PSEditions
CompatiblePSEditions = @('Desktop', 'Core')

# ID used to uniquely identify this module
GUID = '9ff42527-5adb-4004-b7fb-4d700aad397a'

# Author of this module
Author = 'Matt Urbano'

# Company or vendor of this module
CompanyName = 'Urbano.tech'

# Copyright statement for this module
Copyright = 'Copyright (c) 2024 Matt Urbano. All rights reserved.'

# Description of the functionality provided by this module
Description = 'PowerShell module for sending emails and text messages using the SMTP2GO service.'

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '5.1'

# Name of the Windows PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the Windows PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module
# DotNetFrameworkVersion = ''

# Minimum version of the common language runtime (CLR) required by this module
# CLRVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
# RequiredModules = @()

# Assemblies that must be loaded prior to importing this module
# RequiredAssemblies = @()

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
# FormatsToProcess = @()

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module
FunctionsToExport = @('Set-SMTP2GOCredentials', 'Send-SMTP2GOEmail', 'Send-SMTP2GOTextMessage')

# Cmdlets to export from this module
# CmdletsToExport = @()

# Variables to export from this module
# VariablesToExport = @()

# Aliases to export from this module
# AliasesToExport = @()

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess
PrivateData = @{
    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        # Tags = @()

        # A URL to the license for this module.
        # LicenseUri = ''

        # A URL to the main website for this project.
        # ProjectUri = ''

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        # ReleaseNotes = ''
    } # End of PSData hashtable

} # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoUri = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}
