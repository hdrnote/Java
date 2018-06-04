# JDBC编程

## 连接数据库

步骤 

① 引入相关包

② 加载数据库驱动

③ 连接数据库

```java
import java.sql.*;

public class ConnMysql {
	public static void main(String[] args) throws Exception { //注意这个throws Exception
		Class.forName("com.mysql.jdbc.Driver");
		try {
            // 建立连接
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/learn_mysql", "root", "1234");
            // 建立执行语句对象
			Statement stmt = conn.createStatement();
			String sql = "SELECT * FROM Persons";
			ResultSet rs = stmt.executeQuery(sql);

			while (rs.next()) {
				System.out.println(rs.getInt(1) + rs.getString(2) + rs.getString(3) + rs.getInt(4));

			}
		} finally {

		}
	}
}
```

## Connection对象

```java
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:端口/数据库名", "root", "1234");
```

## statement对象

通过connection对象可以有三种方法创建Statement对象

```java
1. createStatement() 创建基本的Statement对象;
2. perparedStatement(String sql) 根据输入的sql语句创建预编译的Statement对象.;
3. perpareCall(String sql) 创建CallableStatement对象.
```

### 通过CreateStatement()创建的statement对象.

① execute(Stirng sql)

④ executeUpdate(String sql)

⑤ executeQuery(String sql)

Statement的execute()方法几乎可以执行任何SQL语句,但是比较麻烦.

该方法只返回boolean值.如果要获取执行后的结果.可以调用statement对象的方法

getResultSet()   getUpdateCount()

### 通过PerparedStatement(String sql)创建的statement对象.

① execute()

② executeUpdate()

③ executeQuery()

### 老实说这书关于这一章真的很不清晰.暂时先跳过这里.



## 

