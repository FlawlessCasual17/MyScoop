$git_diff_Output = (git diff --cached | Out-String)
$backTicks = '```'

# This will make it easier to paste into an AI chatbot.
$value = @"
${backTicks}diff
$git_diff_Output
$backTicks
"@

if ($git_diff_Output -ne ([string]::Empty)) {
    # Set the clipboard of the current user to the output of the `git diff` command
    Set-Clipboard $value
    Write-Host 'Copied to the clipboard:'
    Invoke-Expression ((Get-Command 'bat') ? 'Write-Output $value | bat --style "auto" -l "patch"' : 'Write-Output $value')
} else {
    Write-Host 'There is nothing to commit. If you want to copy the git diff, make sure to stage the modified/added item(s) first.'
}
