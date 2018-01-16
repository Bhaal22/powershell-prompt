Import-Module Get-ChildItemColor

Set-Alias l Get-ChildItemColor -option AllScope
Set-Alias ls Get-ChildItemColorFormatWide -option AllScope

function prompt {
    Write-Host "  Path: " -NoNewline  -ForegroundColor Green
    Write-Host $ExecutionContext.SessionState.Path.CurrentLocation 
    $env:UserName + "@" + $env:computername + "$('$' * ($nestedPromptLevel + 1)) "
}