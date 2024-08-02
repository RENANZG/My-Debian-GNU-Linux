########################################################################
# File Name    : tails_install_win.ps1
# Author       : Me and the bois
# License      : Free of charge, no warranty
# Description  : This script downloads the latest Tails OS ISO, verifies 
#                its signature, and writes it to a selected USB drive on #                a Windows system. The script lists connected USB drives #                and prompts for selection. Ensure you choose the correct 
#                drive to avoid data loss. 
# Dependencies : PowerShell, GPG and `dd` (ddrelease64.exe)
# Usage        : • Donwload GPG and ddrelease64.exe:
#                  https://gpg4win.org/download.html
#                  http://www.chrysocome.net/download
#                • Set the dd path below '# Path to dd.exe' 
#                • In PowerShell, set execution policy:
#                  Set-ExecutionPolicy Bypass -Scope Process -Force
#                • Execute the script:
#                  .\Downloads\tails_install_win.ps1
########################################################################

# Path to dd.exe
$ddPath = "C:\Path\To\dd.exe" # Adjust this path to where dd.exe is located

# Set Tails version details
$tailsBaseUrl = "https://mirrors.edge.kernel.org/tails/stable/"
$tailsVersionPage = Invoke-WebRequest -Uri $tailsBaseUrl

# Extract the latest Tails version
$tailsVersion = $tailsVersionPage.Links | Where-Object { $_.href -match "tails-amd64-[0-9.]*\.img" } | Select-Object -First 1 -ExpandProperty href
if (-not $tailsVersion) {
    Write-Host "Could not detect the latest version of Tails."
    exit 1
}

$tailsVersion = $tailsVersion -replace "/$", ""
$tailsIsoUrl = "$tailsBaseUrl$tailsVersion/$tailsVersion"
$tailsSigUrl = "$tailsBaseUrl$tailsVersion/$tailsVersion.sig"
$tailsKeyUrl = "https://tails.net/tails-signing.key"

$tailsIsoPath = "$env:USERPROFILE\Downloads\tails.img"
$tailsSigPath = "$env:USERPROFILE\Downloads\tails.img.sig"
$tailsKeyPath = "$env:USERPROFILE\Downloads\tails-signing.key"

# Function to download files
function Download-File {
    param (
        [string]$url,
        [string]$outputPath
    )

    Write-Host "Downloading $url..."
    Invoke-WebRequest -Uri $url -OutFile $outputPath
}

# Download Tails ISO, signature, and signing key
Download-File -url $tailsIsoUrl -outputPath $tailsIsoPath
Download-File -url $tailsSigUrl -outputPath $tailsSigPath
Download-File -url $tailsKeyUrl -outputPath $tailsKeyPath

# Verify Tails ISO
Write-Host "Verifying Tails ISO..."
gpg --no-default-keyring --keyring ./temp-keyring.gpg --import $tailsKeyPath
if (gpg --no-default-keyring --keyring ./temp-keyring.gpg --verify $tailsSigPath $tailsIsoPath) {
    Write-Host "The ISO is verified."
} else {
    Write-Host "ERROR! The ISO does not seem to be signed by the Tails key. Something is wrong!"
    exit 1
}

# List connected USB drives
$usbDrives = Get-WmiObject -Query "SELECT * FROM Win32_DiskDrive WHERE MediaType='Removable Media'"

if ($usbDrives.Count -eq 0) {
    Write-Host "No USB drives found. Please insert a USB drive and try again."
    exit
}

# Display USB drives and prompt user to select one
for ($i = 0; $i -lt $usbDrives.Count; $i++) {
    Write-Host "$i: $($usbDrives[$i].DeviceID) - $($usbDrives[$i].Model)"
}

$usbIndex = Read-Host "Select the USB drive index to use"
if ($usbIndex -ge 0 -and $usbIndex -lt $usbDrives.Count) {
    $selectedUsbDrive = $usbDrives[$usbIndex].DeviceID

    # Confirm USB drive erasure
    $confirmation = Read-Host "Warning: $selectedUsbDrive will be erased. Do you wish to continue? (y/n)"
    if ($confirmation -ne 'y') {
        Write-Host "Operation cancelled."
        exit
    }

    # Write Tails ISO to USB drive
    Write-Host "Writing Tails to USB drive..."
    $ddCommand = "$ddPath if=$tailsIsoPath of=\\.\PhysicalDrive$($usbDrives[$usbIndex].Index) bs=4M --progress"
    Write-Host "Running: $ddCommand"
    Invoke-Expression $ddCommand
    Write-Host "Tails OS has been written to the USB drive."
} else {
    Write-Host "Invalid selection."
}
