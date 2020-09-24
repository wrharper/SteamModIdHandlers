$ModIds = (Get-ChildItem -Path ".\ShooterGame\Content\Mods" -Exclude "*.mod", "CrystalIsles", "Ragnarok", "TheCenter", "Valguero").BaseName.Split("`r`n")
$ModString = ""
for ($i = 0; $i -lt $ModIds.Count; $i++)
{
    $ModString += $ModIds[$i]
    $ModString += ","
}
Set-Clipboard -Value $ModString.SubString(0, $ModString.Length - 1)
