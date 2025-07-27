# install.ps1

Write-Host "Starting software installation..."

# Install VS Code
Invoke-WebRequest -Uri "https://code.visualstudio.com/sha/download?build=stable&os=win32-x64-user" -OutFile "$env:TEMP\VSCodeSetup.exe"
Start-Process -FilePath "$env:TEMP\VSCodeSetup.exe" -ArgumentList "/silent" -Wait

# Install Git Bash
Invoke-WebRequest -Uri "https://github.com/git-for-windows/git/releases/download/v2.44.0.windows.1/Git-2.44.0-64-bit.exe" -OutFile "$env:TEMP\GitSetup.exe"
Start-Process -FilePath "$env:TEMP\GitSetup.exe" -ArgumentList "/VERYSILENT" -Wait

# Install Ollama (local LLM runtime)
Invoke-WebRequest -Uri "https://ollama.com/download/OllamaSetup.exe" -OutFile "$env:TEMP\OllamaSetup.exe"
Start-Process -FilePath "$env:TEMP\OllamaSetup.exe" -ArgumentList "/silent" -Wait

Write-Host "Installation complete."
