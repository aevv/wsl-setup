#!/usr/bin/pwsh

$powershellVersion = & pwsh --version
$dotnetVersion = & dotnet --version
$funcVersion = & func --version
$azVersion = & az version

Write-Host "$powershellVersion"
Write-Host "dotnet $dotnetVersion"
Write-Host "functions core tools $funcVersion"
Write-Host "$azVersion"