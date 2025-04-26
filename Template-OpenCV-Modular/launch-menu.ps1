# Interactive Launcher Script for Bernard's C++ Projects

# How to Run
# Launch PowerShell and navigate to the directory where this script is located.
# You may need to set the execution policy to allow script execution. Use the following command:
# Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
# ./launch-menu.ps1




# Path to your build folder
$buildPath = ".\"

# Define your projects
$projects = @{
    1 = "install\bin\Project1.exe"
    2 = "install\bin\Project2.exe"
    3 = "install\bin\Project3.exe"
}

function Show-Menu {
    Write-Host "======================="
    Write-Host "Select a Project to Run:"
    foreach ($key in $projects.Keys | Sort-Object) {
        Write-Host "$key. $(Split-Path $projects[$key] -Leaf)"
    }
    Write-Host "0. Exit"
    Write-Host "======================="
}

while ($true) {
    Show-Menu
    $choice = [int](Read-Host "Enter your choice")

    if ($choice -eq 0) {
        Write-Host "Exiting. Goodbye!"
        break
    }
    elseif ($projects.ContainsKey($choice)) {
        $exePath = Join-Path $buildPath $projects[$choice]
        if (Test-Path $exePath) {
            Write-Host "Running $exePath..."
            & $exePath
        }
        else {
            Write-Host "Executable not found: $exePath"
        }
    }
    else {
        Write-Host "Invalid selection. Please try again."
    }
    
}
