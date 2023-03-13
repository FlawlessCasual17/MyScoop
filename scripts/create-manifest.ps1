$name = $args[0]
Copy-Item "$PSScriptRoot\..\template.json" "$PSScriptRoot\..\bucket\$name.json" -Force
if ($args.Count -eq 2) {
    Write-Host 'Please use only one argument'; Break
}
