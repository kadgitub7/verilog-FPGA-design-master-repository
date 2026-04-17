# Run Verilator on a topic folder: expects rtl/*.sv and tb/*.sv with top module tb_*.sv
# Usage (from repo root): .\scripts\run_verilator.ps1 -TopicPath "topics\00-combinational\01_mux"

param(
    [Parameter(Mandatory = $true)]
    [string]$TopicPath
)

$ErrorActionPreference = "Stop"

# scripts/ lives one level below repo root
$RepoRoot = Split-Path -Parent $PSScriptRoot

$AbsTopic = if ([System.IO.Path]::IsPathRooted($TopicPath)) {
    $TopicPath
} else {
    Join-Path $RepoRoot $TopicPath
}

$AbsTopic = [System.IO.Path]::GetFullPath($AbsTopic)

if (-not (Test-Path $AbsTopic)) {
    Write-Error "Topic path not found: $AbsTopic"
    exit 1
}

$rtlDir = Join-Path $AbsTopic "rtl"
$tbDir  = Join-Path $AbsTopic "tb"
if (-not (Test-Path $rtlDir) -or -not (Test-Path $tbDir)) {
    Write-Error "Expected rtl\ and tb\ under: $AbsTopic"
    exit 1
}

$tbMain = Get-ChildItem $tbDir -Filter "tb_*.sv" -ErrorAction SilentlyContinue | Select-Object -First 1
if (-not $tbMain) {
    Write-Error "No tb_*.sv found in: $tbDir"
    exit 1
}
$topName = [System.IO.Path]::GetFileNameWithoutExtension($tbMain.Name)

$files = @()
$files += Get-ChildItem $rtlDir -Filter "*.sv" -ErrorAction SilentlyContinue | ForEach-Object { $_.FullName }
$files += Get-ChildItem $tbDir  -Filter "*.sv" -ErrorAction SilentlyContinue | ForEach-Object { $_.FullName }

if ($files.Count -eq 0) {
    Write-Error "No .sv files found under rtl\ or tb\"
    exit 1
}

$objDir = Join-Path $AbsTopic "obj_dir"
if (Test-Path $objDir) {
    Remove-Item -Recurse -Force $objDir
}

Push-Location $AbsTopic
try {
    $verilatorArgs = @(
        "--binary",
        "--timing",
        "-Wall",
        "-Wno-DECLFILENAME",
        "-j", "0",
        "-Mdir", $objDir
    ) + $files + @("--top-module", $topName)

    & verilator @verilatorArgs
    if ($LASTEXITCODE -ne 0) {
        throw "Verilator build failed (exit $LASTEXITCODE)"
    }

    $exeName = "V{0}.exe" -f $topName
    $exePath = Join-Path $objDir $exeName
    if (-not (Test-Path $exePath)) {
        $found = Get-ChildItem $objDir -Filter "V*.exe" -ErrorAction SilentlyContinue | Select-Object -First 1
        if ($found) {
            $exePath = $found.FullName
        } else {
            throw "Expected simulator executable under $objDir (e.g. $exeName)"
        }
    }

    Write-Host "Running: $exePath"
    & $exePath
    if ($LASTEXITCODE -ne 0) {
        throw "Simulation failed (exit $LASTEXITCODE)"
    }
} finally {
    Pop-Location
}
