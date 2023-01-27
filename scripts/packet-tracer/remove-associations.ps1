'.pkt', '.pka', '.pkz', '.pks', '.pksz' | ForEach-Object {
    Remove-Item "HKCU:\SOFTWARE\Classes\$_" -ErrorAction 'SilentlyContinue' -Force
}

'PacketTracer8', 'PacketTracer8.Activity', 'PacketTracer8.PKZ', 'PacketTracer8.ActivitySequence', 'PacketTracer8.ActivitySequencePackage' | ForEach-Object {
    Remove-Item "HKCU:\SOFTWARE\Classes\$_" -Recurse -ErrorAction 'SilentlyContinue' -Force
}
