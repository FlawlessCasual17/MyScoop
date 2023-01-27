New-Item 'HKCU:\SOFTWARE\Classes\.pkt' -Value 'PacketTracer8' | Out-Null
New-Item 'HKCU:\SOFTWARE\Classes\.pka' -Value 'PacketTracer8.Activity' | Out-Null
New-Item 'HKCU:\SOFTWARE\Classes\.pkz' -Value 'PacketTracer8.PKZ' | Out-Null
New-Item 'HKCU:\SOFTWARE\Classes\.pks' -Value 'PacketTracer8.ActivitySequence' | Out-Null
New-Item 'HKCU:\SOFTWARE\Classes\.pksz' -Value 'PacketTracer8.ActivitySequencePackage' | Out-Null

'PacketTracer8', 'PacketTracer8.Activity', 'PacketTracer8.PKZ', 'PacketTracer8.ActivitySequence', 'PacketTracer8.ActivitySequencePackage' | ForEach-Object {
    New-Item "HKCU:\SOFTWARE\Classes\$_\shell\open\command" -Value '"REPLACE_HERE\bin\PacketTracer.exe" "%1"' | Out-Null
    New-Item "HKCU:\SOFTWARE\Classes\$_\DefaultIcon" -Value 'REPLACE_HERE\art\pkt.ico' | Out-Null
}