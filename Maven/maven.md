# Maven

## 什么是Maven

Apache Maven是一个软件项目管理和综合工具。基于项目对象模型（POM）的概念，[Maven](http://www.yiibai.com/maven)可以从一个中心资料片管理项目构建，报告和文件。 

## 安装Maven

1. [下载Maven](http://maven.apache.org/download.cgi)
2. 配置环境变量
   1. 添加 M2_HOME
   2. 在path中添加maven启动文件的路径
3. 检验  mvn --version

## Maven基础

### 目录 

maven
   |-----bin
   |-----boot
   |-----conf 
   |-----lib


### 设置仓库路径

打开conf目录下的settings.xml文件

```xml
  <localRepository>D:\Apache\maven-3.5.3\repository</localRepository>
```



## 使用IDEA 创建Maven项目

[教程](https://blog.csdn.net/zzy1078689276/article/details/78732183/) (记得挂代理,不然项目创建速度感人)



## maven 常用命令

进入项目的目录 (具有pom.xml文件夹的目录)

编译: mvn compile 生成target文件

测试: mvn test 编译 然后运行测试类

清除: mvn clean 清除原来的编译结果

打包: mvn package -Dmaven.test.skip = true

安装: mvn install 将项目打包成jar war 本地仓库

发布: mvn deploy 发布到本地仓库或服务器