# Node setup

## Steps

### 本地操作：

#### Chocolatey GUI：

1. 安装软件 NVS（Node Version Switcher）

2. 配置环境变量：【此电脑】> 右键【属性】>【高级系统设置】>【高级】>【环境变量】

- 添加变量 `NVS_HOME`，值 `D:\MyData\NvsRepository`

#### PowerShell：

1. NVS 参考文档：`C:\Users\yli\AppData\Local\nvs\README.md`

```powershell
nvs ls
nvs ls-remote
# install node
nvs add lts
nvs use node/16.17.1/x64
nvs link node/16.17.1/x64
# verify
node -v
npm -v
```

2. NPM 参考文档：https://docs.npmjs.com/cli/v8/commands/npm-config

```powershell
# config npm
npm c ls
npm c set prefix "D:\\MyData\\NpmRepository\\node_global"
npm c set cache "D:\\MyData\\NpmRepository\\node_cache"
# yrm conflict with nrm
npm i nrm -g
nrm --version
nrm ls
nrm test
nrm use taobao
# install yarn
npm i yarn -g
yarn -v
npm ls -g
```

3. Yarn

```powershell
# config yarn
yarn config list
yarn config set global-folder "D:\MyData\YarnRepository\node_global"
yarn config set cache-folder "D:\MyData\YarnRepository\node_cache"
yarn global dir
yarn cache dir
# install yrm
npm i yrm -g
yrm --version
yrm ls
yrm test
yrm use taobao
# yrm conflict with nrm
npm un nrm -g
npm ls -g
```
