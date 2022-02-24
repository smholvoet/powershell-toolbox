# Get all distinct extensions
$fileExtensions = (Get-ChildItem -File -Recurse | Select-Object -Property @{N="ExtLow";E={$_.Extension.ToLower()}} -Unique).ExtLow  

# List all files and export to CSV
$fileExtensions | ForEach-Object {
    if($_.length -gt 0) {
        Get-ChildItem -Path .\ -Filter *$($_) -Recurse `
      | Sort-Object Extension  `
      | Select-Object Extension, Name, DirectoryName, Length `
      | Export-Csv testerino.csv -NoTypeInformation -Append
    }
}
