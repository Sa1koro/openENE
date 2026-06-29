@echo off
rem OpenClaw Node Host (v2026.6.6) - SSH tunnel mode
rem Creates SSH tunnel from VR03 to VR04, then connects node to localhost

rem Kill any stale SSH tunnels first
taskkill /f /im ssh.exe 2>nul

rem Start SSH tunnel from VR03:18789 -> VR04:127.0.0.1:18789
start /B "" C:\Windows\System32\OpenSSH\ssh.exe -N -L 18789:127.0.0.1:18789 Administrator@<vr04-ip> -o StrictHostKeyChecking=accept-new -o BatchMode=yes -o ExitOnForwardFailure=yes -o ServerAliveInterval=30

rem Wait for tunnel to establish
ping -n 4 127.0.0.1 >nul

set "HOME=C:\Users\Administrator"
set "TMPDIR=C:\Users\Administrator\AppData\Local\Temp"
set "OPENCLAW_GATEWAY_TOKEN=***"
set "OPENCLAW_LAUNCHD_LABEL=ai.openclaw.node"
set "OPENCLAW_SYSTEMD_UNIT=openclaw-node"
set "OPENCLAW_WINDOWS_TASK_NAME=OpenClaw Node"
set "OPENCLAW_WINDOWS_TASK_HIDDEN_LAUNCHER=1"
set "OPENCLAW_TASK_SCRIPT_NAME=node.cmd"
set "OPENCLAW_LOG_PREFIX=node"
set "OPENCLAW_SERVICE_MARKER=openclaw"
set "OPENCLAW_SERVICE_KIND=node"
set "OPENCLAW_SERVICE_VERSION=2026.6.6"
<node-binary-path> <openclaw-path> node run --host 127.0.0.1 --port 18789 --display-name vr03-node

rem Cleanup tunnel when node exits
taskkill /f /im ssh.exe 2>nul
