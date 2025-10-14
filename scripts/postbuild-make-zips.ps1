# scripts/postbuild-make-zips.ps1
# Laver to ZIPs i input/attachments/:
#   - ReceiveExamples.zip  (Bundle-R-*)
#   - SendExamples.zip     (Bundle-S-*)
# Vælger skiftevis JSON og XML per basisnavn. Fallback hvis et format mangler (dette er for at sikre at leverandørerene testes i begge formater).

$ErrorActionPreference = "Stop"

# Projektmapper
$ProjectRoot = Split-Path -Parent $PSScriptRoot
$outDir      = Join-Path $ProjectRoot "output"
$attachDir   = Join-Path $ProjectRoot "input/attachments"

if (!(Test-Path $outDir)) {
  throw "Output-mappen ($outDir) findes ikke. Kør først: sushi && _genonce"
}

# Sørg for attachments findes
New-Item -ItemType Directory -Force -Path $attachDir | Out-Null

# ZIP-stier
$zipReceive = Join-Path $attachDir "ReceiveExamples.zip"
$zipSend    = Join-Path $attachDir "SendExamples.zip"

# Ryd gamle ZIPs
foreach ($z in @($zipReceive,$zipSend)) { if (Test-Path $z) { Remove-Item $z -Force } }

function Get-AltSelection {
  param(
    [Parameter(Mandatory=$true)][string]$prefix  # "Bundle-R-" eller "Bundle-S-"
  )

  # Find JSON & XML i output
  $files = Get-ChildItem -Path $outDir -Recurse -File |
           Where-Object { $_.Name -like "$prefix*.json" -or $_.Name -like "$prefix*.xml" }

  if (-not $files) { return @() }

  # Gruppér efter basisnavn og sorter deterministisk
  $byBase = $files | Group-Object { $_.BaseName } | Sort-Object Name

  $selected = New-Object System.Collections.Generic.List[System.IO.FileInfo]
  $takeJson = $true  # start med JSON, skift for hver gruppe

  foreach ($grp in $byBase) {
    $json = $grp.Group | Where-Object { $_.Extension -ieq ".json" } | Sort-Object FullName | Select-Object -First 1
    $xml  = $grp.Group | Where-Object { $_.Extension -ieq ".xml"  } | Sort-Object FullName | Select-Object -First 1

    if ($takeJson) {
      if ($json) { $selected.Add($json) }
      elseif ($xml) { $selected.Add($xml) }  # fallback
    } else {
      if ($xml) { $selected.Add($xml) }
      elseif ($json) { $selected.Add($json) } # fallback
    }

    $takeJson = -not $takeJson
  }

  return $selected
}

# Saml valgene
$receive = Get-AltSelection -prefix "Bundle-R-"
$send    = Get-AltSelection -prefix "Bundle-S-"

# Lav ZIPs
if ($receive.Count -gt 0) {
  Compress-Archive -Path ($receive | ForEach-Object FullName) -DestinationPath $zipReceive
  Write-Host "Created $zipReceive ($($receive.Count) files)"
} else {
  Write-Warning "Ingen filer fundet til ReceiveExamples (Bundle-R-*)"
}

if ($send.Count -gt 0) {
  Compress-Archive -Path ($send | ForEach-Object FullName) -DestinationPath $zipSend
  Write-Host "Created $zipSend ($($send.Count) files)"
} else {
  Write-Warning "Ingen filer fundet til SendExamples (Bundle-S-*)"
}
