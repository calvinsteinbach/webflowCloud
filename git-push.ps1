#!/usr/bin/env powershell
Set-Location "C:\Users\calvin\Desktop\Software Development\webflowCloud"

# Git-Pfad setzen
$gitPath = "C:\Program Files\Git\bin\git.exe"

Write-Host "Initializing Git repository..."
& $gitPath init

Write-Host "Adding all files..."
& $gitPath add .

Write-Host "Setting Git config..."
& $gitPath config user.email "calvin.steinbach@example.com"
& $gitPath config user.name "Calvin Steinbach"

Write-Host "Creating initial commit..."
& $gitPath commit -m "Initial commit"

Write-Host "Setting main branch..."
& $gitPath branch -M main

Write-Host "Adding remote origin..."
& $gitPath remote add origin https://github.com/calvinsteinbach/webflowCloud.git

Write-Host "Pushing to GitHub..."
& $gitPath push -u origin main

Write-Host "Done!"
