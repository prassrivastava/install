# install-software.ps1

# Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Install VS Code, Git, Python
choco install vscode git python3 -y

# Install Git Bash (Git includes Bash)
# Install Ollama (if you have a CLI or MSI)
Invoke-WebRequest -Uri "https://ollama.com/download/OllamaSetup.exe" -OutFile "C:\OllamaSetup.exe"
Start-Process "C:\OllamaSetup.exe" -ArgumentList "/quiet" -Wait