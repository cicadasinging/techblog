# Chocolatey setup

## Steps

### 本地操作：

#### PowerShell as admin：

1. Chocolatey CLI 参考文档：https://chocolatey.org/install#individual

```powershell
# not Restricted, suggest Bypass or AllSigned
Get-ExecutionPolicy
# install
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
# verify
choco
# upgrade
choco upgrade chocolatey
```

2. Chocolatey GUI 参考文档：https://docs.chocolatey.org/en-us/chocolatey-gui/setup/installation

```powershell
choco install chocolateygui
choco upgrade chocolateygui
```

#### Chocolatey GUI：

【设置】>【Chocolatey】

- 编辑变量 `cacheLocation`，值 `D:\MyData\ChocoRepository\cache` 
