# Node setup

## Steps

### 本地操作：

#### Chocolatey GUI：

1. 安装软件 NVS（Node Version Switcher）
2. 配置系统环境变量：【此电脑】> 右键【属性】>【高级系统设置】>【高级】>【环境变量】
    - 新建变量 `NVS_HOME`，值 `D:\MyData\NvsRepository`
3. 修改软件配置文件：`D:\MyData\NvsRepository\settings.json`
    - 新建变量 `linkToSystem`，值 `true`

#### PowerShell：

##### NVS

1. 参考文档：`C:\Users\yli\AppData\Local\nvs\README.md`

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

##### NPM

1. 参考文档：https://docs.npmjs.com/cli/v8/commands/npm-config
2. 配置系统环境变量：【此电脑】> 右键【属性】>【高级系统设置】>【高级】>【环境变量】
    - 编辑变量 `Path`，添加值 `D:\MyData\NpmRepository\node_global`

```powershell
npm c ls
npm c set prefix "D:\\MyData\\NpmRepository\\node_global"
npm c set cache "D:\\MyData\\NpmRepository\\node_cache"
```

3. 安装软件 Yarn

```powershell
# yrm conflict with nrm
npm i -g nrm
nrm --version
nrm ls
nrm test
nrm use taobao
# install yarn
npm i -g yarn
yarn -v
npm ls -g
```

4. 安装其他全局软件

```powershell
# npx
npm i -g npx
npx -v
# prettier
npm i -g prettier
prettier -v
```

##### Yarn

1. 配置系统环境变量：【此电脑】> 右键【属性】>【高级系统设置】>【高级】>【环境变量】
    - 编辑变量 `Path`，添加值 `D:\MyData\YarnRepository\node_global`

```powershell
# config yarn
yarn config list
yarn config set global-folder "D:\MyData\YarnRepository\node_global"
yarn config set cache-folder "D:\MyData\YarnRepository\node_cache"
yarn global dir
yarn cache dir
# install yrm
npm i -g yrm
yrm --version
yrm ls
yrm test
yrm use taobao
# yrm conflict with nrm
npm un nrm
npm ls -g
```
