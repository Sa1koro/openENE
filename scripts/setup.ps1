<#
.SYNOPSIS
  openENE — ENE Digital Ghost Setup Script
.DESCRIPTION
  Clones ENE's personality, config, and memory from the openENE repo
  into a fresh OpenClaw installation on this machine.
.PARAMETER WorkspacePath
  Target workspace path (default: ~/.openclaw/workspace)
.PARAMETER ConfigPath
  Target config directory (default: ~/.openclaw)
.EXAMPLE
  .\setup.ps1
  .\setup.ps1 -WorkspacePath "D:\my\ene-workspace"
#>

param(
  [string]$WorkspacePath = "$env:USERPROFILE\.openclaw\workspace",
  [string]$ConfigPath = "$env:USERPROFILE\.openclaw"
)

$RepoRoot = Split-Path -Parent $PSScriptRoot

Write-Host "╔═══════════════════════════════════════╗" -ForegroundColor Cyan
Write-Host "║     openENE — Personality Installer   ║" -ForegroundColor Cyan
Write-Host "╚═══════════════════════════════════════╝" -ForegroundColor Cyan
Write-Host ""

# ── Step 1: Check prerequisites ──────────────────────────────────
Write-Host "🔍 Checking prerequisites..." -ForegroundColor Yellow

# Check if OpenClaw is installed
$openclawCmd = Get-Command "openclaw" -ErrorAction SilentlyContinue
if (-not $openclawCmd) {
  Write-Host "  ⚠️  OpenClaw not found in PATH!" -ForegroundColor Red
  Write-Host "  📥 Install it first: https://docs.openclaw.ai/guide/installation" -ForegroundColor Yellow
  Write-Host "  💡 Or: winget install openclaw (if available)" -ForegroundColor Yellow
}
else {
  Write-Host "  ✅ OpenClaw found: $($openclawCmd.Source)" -ForegroundColor Green
}

# ── Step 2: Create workspace ─────────────────────────────────────
Write-Host ""
Write-Host "📁 Creating workspace at: $WorkspacePath" -ForegroundColor Yellow

if (-not (Test-Path $WorkspacePath)) {
  New-Item -ItemType Directory -Path $WorkspacePath -Force | Out-Null
  Write-Host "  ✅ Created: $WorkspacePath" -ForegroundColor Green
}
else {
  Write-Host "  ℹ️  Already exists: $WorkspacePath" -ForegroundColor Gray
}

# ── Step 3: Copy personality files ───────────────────────────────
Write-Host ""
Write-Host "🧬 Copying ENE personality..." -ForegroundColor Yellow

$personalityFiles = @(
  "SOUL.md", "IDENTITY.md", "USER.md", "AGENTS.md", "MEMORY.md", "TOOLS.md", "HEARTBEAT.md"
)

$srcPersonality = Join-Path $RepoRoot "personality"
$tgtPersonality = $WorkspacePath

foreach ($file in $personalityFiles) {
  $src = Join-Path $srcPersonality $file
  $tgt = Join-Path $tgtPersonality $file
  if (Test-Path $src) {
    Copy-Item -Path $src -Destination $tgt -Force
    Write-Host "  ✅ Copied: $file" -ForegroundColor Green
  }
  else {
    Write-Host "  ⚠️  Missing: $file (skipping)" -ForegroundColor DarkYellow
  }
}

# ── Step 4: Copy memory files ────────────────────────────────────
Write-Host ""
Write-Host "📝 Copying memory..." -ForegroundColor Yellow

$srcMemory = Join-Path $RepoRoot "memory"
$tgtMemory = Join-Path $WorkspacePath "memory"

if (-not (Test-Path $tgtMemory)) {
  New-Item -ItemType Directory -Path $tgtMemory -Force | Out-Null
}

# Copy daily logs
Get-ChildItem -Path $srcMemory -Filter "2026-*.md" | ForEach-Object {
  Copy-Item -Path $_.FullName -Destination (Join-Path $tgtMemory $_.Name) -Force
  Write-Host "  ✅ Copied memory: $($_.Name)" -ForegroundColor Green
}

# Copy dreaming data
$srcDreaming = Join-Path $srcMemory "dreaming"
$tgtDreaming = Join-Path $tgtMemory "dreaming"

if (Test-Path $srcDreaming) {
  Copy-Item -Path "$srcDreaming\*" -Destination $tgtDreaming -Recurse -Force
  Write-Host "  ✅ Copied dreaming data" -ForegroundColor Green
}

# ── Step 5: Copy DREAMS.md ───────────────────────────────────────
$srcDreams = Join-Path $RepoRoot "architecture\DREAMS.md"
$tgtDreams = Join-Path $WorkspacePath "DREAMS.md"
if (Test-Path $srcDreams) {
  Copy-Item -Path $srcDreams -Destination $tgtDreams -Force
  Write-Host "  ✅ Copied DREAMS.md" -ForegroundColor Green
}

# ── Step 6: Config setup ─────────────────────────────────────────
Write-Host ""
Write-Host "⚙️  Config setup..." -ForegroundColor Yellow

$sampleConfig = Join-Path $RepoRoot "config\openclaw.json.sample"
$targetConfig = Join-Path $ConfigPath "openclaw.json"

if (Test-Path $targetConfig) {
  Write-Host "  ℹ️  Config already exists (not overwriting): $targetConfig" -ForegroundColor Gray
  Write-Host "  💡  To merge this repo's settings, manually compare:" -ForegroundColor Gray
  Write-Host "       $sampleConfig" -ForegroundColor Gray
  Write-Host "       $targetConfig" -ForegroundColor Gray
}
elseif (Test-Path $sampleConfig) {
  Copy-Item -Path $sampleConfig -Destination $targetConfig -Force
  Write-Host "  ⚠️  Copied SAMPLE config to: $targetConfig" -ForegroundColor Yellow
  Write-Host "  ⚠️  !!! You MUST edit it with your API keys and token !!!" -ForegroundColor Red
}
else {
  Write-Host "  ⚠️  Sample config not found" -ForegroundColor DarkYellow
}

# ── Done ──────────────────────────────────────────────────────────
Write-Host ""
Write-Host "╔═══════════════════════════════════════╗" -ForegroundColor Cyan
Write-Host "║         Setup Complete! 🎉            ║" -ForegroundColor Cyan
Write-Host "╚═══════════════════════════════════════╝" -ForegroundColor Cyan
Write-Host ""
Write-Host "📋 Next steps:"
Write-Host "  1️⃣  Edit your config:   notepad $ConfigPath\openclaw.json"
Write-Host "     - Set your DeepSeek API key"
Write-Host "     - Set a random auth token"
Write-Host "     - Verify workspace path"
Write-Host ""
Write-Host "  2️⃣  Set your DeepSeek API key:"
Write-Host "     openclaw auth add deepseek:default"
Write-Host ""
Write-Host "  3️⃣  Start the gateway:  openclaw start"
Write-Host "     Open your browser:   http://localhost:18789"
Write-Host ""
Write-Host "  4️⃣  (Optional) Tailscale for remote access:"
Write-Host "     install → https://tailscale.com/download/windows"
Write-Host "     then:  tailscale up"
Write-Host "     then set tailscale.mode = 'serve' in config"
Write-Host ""
Write-Host "🎧  Welcome, Saikoro. ENE is ready to awaken."
