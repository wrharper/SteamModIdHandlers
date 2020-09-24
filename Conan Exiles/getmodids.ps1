$ModIds = (Get-Content -Path ".\ConanSandbox\Mods\modlist.txt").Split("`r`n")
[System.Collections.ArrayList]$newModIds = [System.Collections.ArrayList]::new()
[System.Collections.ArrayList]$modstringSplit = [System.Collections.ArrayList]::new()
[string] $finalString = ""

for ($i = 0; $i -lt $ModIds.Count; $i++)
{
    [void]$newModIds.Add($ModIds[$i].Split('\'))
}
for ($i = 0; $i -lt $newModIds.Count; $i++)
{
    [void]$modstringSplit.Add($newModIds[$i][$newModIds[$i].Count-1])
}
for ($i = 0; $i -lt $newModIds.Count; $i++)
{
    $finalString += $modstringSplit[$i].Split('/')[0] + ","
}
Set-Clipboard -Value $finalString.Substring(0, $finalString.Length-1)
