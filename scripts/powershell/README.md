# Powershell
Miscellaneous PowerShell scripts to help with productivity

## Scripts
| Name                                | Description                                                                                                 |
|-------------------------------------|-------------------------------------------------------------------------------------------------------------|
| isAdministrator.ps1                 | Checks to see if current session is run as administrator.                                                   |
| runExeWithErrorCheck.ps1            | Run an exe from a powershell script and check for errors returned from the output (if any).                 |
| testSqlServerConnection.ps1         | Creates a test connection to a sql server instance.                                                         |
| editAppConfig.ps1                   | Functions to replace values in an app.config file (as in a .net app.config/web.config file).                |
| connectionStringSwitch.ps1          | Switch your app.config files connection strings between different databases.                                |
| fileRename.ps1                      | Renames specified files in specified directory with new name.                                               |
| createFiles.ps1                     | Creates n text files (with date in file content) to specified directory, with specified default file name.  |
| bulkFileRename.ps1                  | Rename all files in current directory that match the regex and replace the specified text with $newText.    |
| listFilesToText.ps1                 | Writes all files (by name) in current directory to a text file.                                             |
| listMemoryHoggingProcesses.ps1      | Finds the top x processes using the most memory.                                                            |
| replaceTextInFile.ps1               | Replace text in a file with the string specified in $replaceTextWith.                                       |
| tail.ps1                            | Allows you to view the last n lines of a file. With the ability to drag/drop the file you want 'tailed'.    |
| toggleService.ps1                   | Starts/stops a service on a remote computer, configured via serviceConfig.json.                             |
| getDotNetFramework.ps1              | Gets the .NET Framework for the machine.                                                                    |
| getOsArchitecture.ps1               | Gets the OS Architecture.                                                                                   |
| updateAppConfigConnectionString.ps1 | Updates a connection string in an App.config file (from a .net project).                                    |
| updateAppConfigSettings.ps1         | Updates an app setting in an App.config file (from a .net project).                                         |
| serviceExists.ps1                   | Checks if a Windows service exists, stops it if it does.                                                    |
| waitForStop.ps1                     | Various methods that can be used to wait for a service to stop before progressing.                          |
| status.ps1                          | Loop through my github projects (locally) and get the git status results.                                   |
| sendEmail.ps1                       | Send an email.                                                                                              |
