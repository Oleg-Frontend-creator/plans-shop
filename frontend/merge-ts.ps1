Set-Location "C:\Users\Oleg\WebstormProjects\11. Angular\plants_internet_shop\frontend"

Remove-Item -Path "all-ts-code.txt" -ErrorAction SilentlyContinue

Get-ChildItem -Path ".\src" -Recurse -Include *.ts |
    ForEach-Object {

        Add-Content -Path "all-ts-code.txt" -Value ("`n`n--- FILE: " + $_.FullName + " ---`n")

        Get-Content $_.FullName | Add-Content -Path "all-ts-code.txt"
    }