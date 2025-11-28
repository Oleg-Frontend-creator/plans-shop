Set-Location "C:\Users\Oleg\WebstormProjects\11. Angular\plants_internet_shop\frontend" #path to project

Remove-Item -Path "all-html-code.txt" -ErrorAction SilentlyContinue  #name of text file

Get-ChildItem -Path ".\src" -Recurse -Include *.html |                #ext files
    ForEach-Object {

        Add-Content -Path "all-html-code.txt" -Value ("`n`n--- FILE: " + $_.FullName + " ---`n")

        Get-Content $_.FullName | Add-Content -Path "all-html-code.txt"
    }