# Simple Launcher Script for Bernard's C++ Projects

# Path to build folder
$buildPath = "D:/path/to/your/build"

# List of project executable names
$projects = @(
    "Project1/Debug/Project1.exe",
    "Project2/Debug/Project2.exe",
    "Project3/Debug/Project3.exe"
)

foreach ($project in $projects) {
    $exePath = Join-Path $buildPath $project
    if (Test-Path $exePath) {
        Write-Host "Running $exePath..."
        & $exePath
    }
    else {
        Write-Host "Executable not found: $exePath"
    }
}
