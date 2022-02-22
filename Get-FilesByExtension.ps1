Get-ChildItem -Path .\ -Filter *.js -Recurse -File -Name| ForEach-Object {
    [System.IO.Path]::GetFileNameWithoutExtension($_)
}
