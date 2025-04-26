# Full Clean Rebuild Script for Bernard's C++ OpenCV Projects

# ---- Settings ----
$projectRoot = "D:/Repositories/Apps/C++/Template-OpenCV-Orchestrated"
$buildDir = "$projectRoot/build"
$installDir = "$projectRoot/install"
$vcpkgToolchain = "D:/Library/vcpkg/scripts/buildsystems/vcpkg.cmake"

# ---- Start Script ----
Write-Host "=== Cleaning Build Directory ==="
if (Test-Path $buildDir) {
    Remove-Item "$buildDir/*" -Recurse -Force
} else {
    New-Item -ItemType Directory -Path $buildDir
}

# Move into build folder
Set-Location $buildDir

Write-Host "=== Configuring CMake ==="
cmake .. -DCMAKE_INSTALL_PREFIX="$installDir" -DCMAKE_TOOLCHAIN_FILE="$vcpkgToolchain" -DCMAKE_BUILD_TYPE=Release

Write-Host "=== Building Project ==="
cmake --build . --config Release

Write-Host "=== Installing Executables ==="
cmake --install . --config Release

Write-Host "=== Done! ==="
pause
