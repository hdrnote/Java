# MySQL安装过程中卡在start server

```
1, 卸载MySQL
2, 删除目录 C:\Documents and Settings\All Users\Application Data\MySQL
3, 重启
```



### 修改默认MYSQL数据库data存放位置

```
一、停止MySQL
　　net stop mysql80

　　二、复制原来数据库目录到新目录
　　1、复制C:\ProgramData\MySQL\MySQL Server 5.5\中的data目录到
　　D:\Program Files\MySQL\MySQL Server 5.5\目录下（自建的目录）

三,修改MySQL配置文件
　　1、用记事本打开C:\ProgramData\MySQL\MySQL Server 5.5目录下的my.ini
　　找到datadir="C:\ProgramData\MySQL\MySQL Server 5.5\data"
　　在前面加#注释掉
　　在下面添加一行
　　datadir="D:\Program Files\MySQL\MySQL Server 5.5\data"
　　修改完成后，保存退出。
```

