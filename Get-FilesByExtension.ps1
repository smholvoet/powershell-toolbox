# Get all distinct extensions
(Get-ChildItem -File -Recurse | Select -Property @{N="ExtLow";E={$_.Extension.ToLower()}} -Unique).ExtLow  
# Save in array

# Loop through array
Get-ChildItem -Path .\ -Filter *.js -Recurse -File -Name| ForEach-Object {
    # Add to seperate workbook
    [System.IO.Path]::GetFileNameWithoutExtension($_)
}
