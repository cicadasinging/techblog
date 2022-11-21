# Java8 setup

## Steps

### 云端操作（Oracle）：

1. 下载软件：https://www.oracle.com/cn/java/technologies/downloads/#java8-windows

### 本地操作（Windows 10）：

1. 安装软件
2. 配置系统环境变量：【此电脑】> 右键【属性】>【高级系统设置】>【高级】>【环境变量】
    - 新建变量 `JAVA_HOME`，值 `C:\MySoft\Java\jdk1.8.0_341`
    - 新建变量 `CLASSPATH`，值 `.;%JAVA_HOME%\lib\dt.jar;%JAVA_HOME%\lib\tools.jar;`
    - 编辑变量 `Path`，添加值 `%JAVA_HOME%\bin`、`%JAVA_HOME%\jre\bin` 
