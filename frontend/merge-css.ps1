Set-Location "C:\Users\Oleg\WebstormProjects\11. Angular\plants_internet_shop\frontend" #path to project

Remove-Item -Path "all-css-code.txt" -ErrorAction SilentlyContinue  #name of text file

Get-ChildItem -Path ".\src" -Recurse -Include *.*ss |                #ext files
    ForEach-Object {

        Add-Content -Path "all-css-code.txt" -Value ("`n`n--- FILE: " + $_.FullName + " ---`n")

        Get-Content $_.FullName | Add-Content -Path "all-css-code.txt"
    }