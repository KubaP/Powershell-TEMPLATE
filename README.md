# <MODULENAME>
Module description..., the same one used in the module manifest.

Who this module is aimed at...

<br>

[![Azure DevOps builds](https://img.shields.io/azure-devops/build/KubaP999/3d9148d2-04d0-4835-b7cb-7bf89bdbf11b/7?label=latest%20build&logo=azure-pipelines)](https://dev.azure.com/KubaP999/ProgramManager/_build/latest?definitionId=7&branchName=development)
/\ Replace this one with the badge option from the azure 'dev-ci' pipeline management page.
[![Azure DevOps coverage](https://img.shields.io/azure-devops/coverage/KubaP999/ProgramManager/7?logo=codecov&logoColor=white)](https://dev.azure.com/KubaP999/ProgramManager/_build/latest?definitionId=7&branchName=development)
/\ Replace this one with a shields.io badge. Go to 'Code Coverage' -> 'Azure Code Coverage'
    Fill out organisation/project/id values for the dev-ci pipeline
    Style = 'flat'
    logo = 'codecov'
    logoColour = 'white'
    
   Turn the badge into a link by surrounding it in [] brackets, and then adding a (...) link afterwards which points to the azure dev ci pipeline page.
[![PowerShell Gallery Version](https://img.shields.io/powershellgallery/v/ProgramManager?logo=powershell&logoColor=white)](https://www.powershellgallery.com/packages/<ModuleName>)
/\ Replace this one with a shields.io badge. Go to 'Version' -> 'Powershell Gallery (inc. pre-release)'
    Fill out package name
    logo = 'powershell'
    logoColour = 'white'
![PowerShell Gallery Platform](https://img.shields.io/powershellgallery/p/ProgramManager?logo=windows)
/\ Replace this one with a shields.io badge. Go to 'Platform Support' -> 'Powershell Gallery'
    Fill out package name
    logo = 'windows'
    logoColour = 'white'
[![License](https://img.shields.io/badge/license-GPLv3-blue)](./LICENSE)

### Table of Contents

1. [Getting Started](#getting-started)
2. [Basic Usage](#basic-usage)
3. [Information & Features](#information--features)
4. [Build Instructions](#build-instructions)
5. [Support](#support)
6. [Contributing](#contributing)
7. [License](#license)

## Getting Started
### Installation
In order to get started with the latest version, simply download the module from the [PSGallery](https://www.powershellgallery.com/packages/<ModuleName>), or install it from powershell by running:
```powershell
Install-Module <ModuleName>
```
Installing this module does not mean that it is loaded automatically on start-up. Powershell supports loading modules on-the-fly since v3, however the first time you run a command it can be a bit slow to tab-complete parameters or values. If you would like to load this module on shell start-up, add the following line to `~\Documents\Powershell\Profile.ps1`:
```powershell
Import-Module <ModuleName>
```

### Requirements
This module requires minimum `Powershell 5.1`. Works with `Pwsh 6+` as well.
\[OR\]
This module requires minimum `Powershell 6`.

This module works on **Windows** only.
\[OR\]
This module works on `Windows`, `MacOS`, and `Linux`. 

⚠Whilst there are no platform-specific features in use, this module has not yet been tested on either `macOS` or `Linux` so there are no guarantees it will work 100% of the time.

## Basic Usage
### Creating a new ...
Usage instructions/overview of commands taken from about file.
...

## Information & Features
### Documentation
For a detailed rundown and explanation of all the features in this module, view the **help page** by running:
```powershell
Get-Help about_<MODULENAME>
```
For detailed help about a specific command, run:
```powershell
Get-Help <COMMAND NAME> -Full
```

### Extra features
#### Aliases
The commands in this module have default aliases:
|Command	     |Alias|
|----------------|-----|
|New-<OBJECT>    | n.. |
|Get-<OBJECT>    | g.. |
|Set-<OBJECT>    | s.. |
|Remove-<OBJECT> | r.. |

#### Tab completion
The `...` parameter supports tab-completion of valid **existing** <OBJECT> names in the following commands:
- `...`
- `...`

#### Custom scriptblock evaluation
When creating a new ..., you can pass in a scriptblock which will evaluate...

For details, see `about_<MODULENAME>_scriptblocks`.
\[OR\]
For details, see the `... SCRIPTBLOCK` section in `about_<MODULENAME>`.

#### -WhatIf and -Confirm support
The following functions support `-WhatIf` and `-Confirm` parameters:
- `...`
- `...`

Use `-WhatIf` to see and list what changes a command will do.

Use `-Confirm` to ask for a prompt for every state-altering change.

#### Formatting
The `[<OBJECT>]` object within this module has custom formatting rules for all views. Simply pipe the output of the `Get-<OBJECT>` command to one of:
| Command       | Alias |
|---------------|-------|
| Format-List   |  fl   |
| Format-Table  |  ft   |
| Format-Custom |  fc   |
| Format-Wide   |  fw   |

The `Format-Custom` & `Format-List` views contain the largest amount of information regarding the <OBJECT>.

⚠This module supports `Fancy` formatting (using colours and emoijs) for enhanced readability. This *only* works within the **Windows Terminal** at the moment (support for other terminals which support ANSI-codes/emojis is WIP). The example below shows the enhanced formatting.

![Example](./img.png)

## Build Instructions
#### Prerequisites
Install the following:
- Powershell Core 7.0.0+
- Pester 4.10.1
- PSScriptAnalyzer 1.18.0+

#### Clone the git repo
```
git clone https://github.com/KubaP/Powershell-<MODULENAME>.git
```

#### Run the build scripts

Navigate to the root repository folder and run the following commands:
```powershell
& .\build\vsts-prerequisites.ps1
& .\build\vsts-validate.ps1
& .\build\vsts-build-prerequisites
& .\build\vsts-build.ps1 -WorkingDirectory .\ -SkipPublish
```
The built module will be located in the `.\publish` folder.

## Support
⚠If you need help regarding the usage of the module, please see the **help page** by running `Get-Help about_<MODULENAME>`.

If there is a bug/issue, please file it on the github issue tracker.

## Contributing
If you have a suggestion, create a new `Github Issue` detailing the idea.

Feel free to make pull requests if you have an improvement. Only submit a single feature at a time, and make sure that the code is cleanly formatted, readable, and well commented.

## License 
This project is licensed under the GPLv3 license - see [LICENSE.md](./LICENSE) file for details.

## Acknowledgements ?
Any acknowledgements...