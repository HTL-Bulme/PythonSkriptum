$files = ls *_*.md | Sort-Object 
$files = @(ls ./README.md) + $files

$search_for = " 📝 Übung \d+"
$Global:uebung_idx = 0

$callback = {
    param($match)
    $Global:uebung_idx += 1
    " 📝 Übung " + $Global:uebung_idx
  }

foreach ($file in $files) {
    $content = Get-Content $file -Raw

    $re = [regex]$search_for
    $result = $re.Replace($content, $callback)
    Set-Content -Path $file -Value $result -Encoding utf8NoBOM
}