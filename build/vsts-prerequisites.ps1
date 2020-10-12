﻿# Install the required modules for testing.
Write-Host "Installing Pester" -ForegroundColor Cyan
Install-Module "Pester" -RequiredVersion "4.10.1" -Force -SkipPublisherCheck -Verbose
Import-Module "Pester" -Force -PassThru -Verbose

Write-Host "Installing PSScriptAnalyzer" -ForegroundColor Cyan
Install-Module "PSScriptAnalyzer" -Force -SkipPublisherCheck -Verbose
Import-Module "PSScriptAnalyzer" -Force -PassThru -Verbose
