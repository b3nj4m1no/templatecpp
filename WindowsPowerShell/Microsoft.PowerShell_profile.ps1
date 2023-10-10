function Copy-CppFile {
    param (
        [string]$SourcePath = "C:\Users\benjamin\Desktop\School\2023\informatica\c\template\main.cpp"
    )
    Copy-Item -Path $SourcePath -Destination .\
}

Set-Alias -Name templatecpp -Value Copy-CppFile