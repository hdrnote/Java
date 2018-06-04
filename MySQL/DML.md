# DML

① 插入新数据

② 修改已有数据

③ 删除不需要的数据

## insert into

The INSERT INTO statement is used to insert new records in a table.

```mysql
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);
```

If you are adding values for all the columns of the table, you do not need to specify the column names in the SQL query. However, make sure the order of the values is in the same order as the columns in the table. 

```mysql
INSERT INTO table_name
VALUES (value1, value2, value3, ...);
#-------------------------------------------
INSERT INTO Persons
VALUES(1,"Yicheng","Huang",20);
```

## update

 The UPDATE statement is used to modify the existing records in a table.

### UPDATE Syntax

```mysql
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;
#-------------------------
UPDATE Persons
SET LastName = "Jingfang", FirstName="Zeng"
WHERE PersonID = 1;
```

**Note:**If you omit the WHERE clause, all records in the table will be updated!

## delete from

The DELETE statement is used to delete existing records in a table.

```mysql
DELETE FROM table_name
WHERE condition;
#----------------------------
DELETE FROM Persons
WHERE PersonID = 2;
```

**Note:**If you omit the WHERE clause, all records in the table will be deleted!

# 表单查询

## The SQL SELECT Statement

The SELECT statement is used to select data from a database.

The data returned is stored in a result table, called the result-set.

```mysql
SELECT column1, column2, ...
FROM table_name;
#--------------------------------
SELECT LastName,FirstName
FROM Persons;
```

## The SQL SELECT DISTINCT Statement

The SELECT DISTINCT statement is used to return only distinct (different) values.

```mysql
SELECT DISTINCT column1, column2, ...
FROM table_name;
#-----------------------------------------------
SELECT column1, column2, ...
FROM table_name
ORDER BY column1, column2, ... ASC|DESC;
LIMIT number;
#-----------------------------------------------
SELECT Count(*) AS DistinctCountries
FROM (SELECT DISTINCT Country FROM Customers);
```

