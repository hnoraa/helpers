$cwd = Get-Location
$report = "$($cwd)\report.txt"

Set-Content $report "Git Status Report: $(Get-Date)"
Add-Content $report "**********************************************"

Get-ChildItem -Path $cwd -Directory | ForEach-Object {
    Write-Host "Running git status on: $($_)"
    Add-Content $report "$($_) Git Status:"
    git -C $_ status | Add-Content $report
    Add-Content $report "**********************************************"
}

###### example report
###### Git Status Report: 02/22/2022 16:26:41
###### **********************************************
###### 6502Emulation Git Status:
###### On branch master
###### Your branch is up to date with 'origin/master'.
###### 
###### Untracked files:
######   (use "git add <file>..." to include in what will be committed)
###### 
###### 	test/
###### 
###### nothing added to commit but untracked files present (use "git add" to track)
###### **********************************************
###### gameDev Git Status:
###### On branch main
###### Your branch is up to date with 'origin/main'.
###### 
###### nothing to commit, working tree clean
###### **********************************************
###### pixelToMidi Git Status:
###### On branch main
###### Your branch is up to date with 'origin/main'.
###### 
###### nothing to commit, working tree clean
###### **********************************************
###### Standards Git Status:
###### On branch main
###### Your branch is up to date with 'origin/main'.
###### 
###### nothing to commit, working tree clean
###### **********************************************
