# DDL  

Data Definition Language 数据定义语句

### 创建表格

① 普通建表

```mysql
create table test
(
	test_id int,
    test_price decimal,
    test_name varchar(255) default "xxx",
    test_desc text,
    test_img blob,
    test_date datetime
);
```

② 子查询建表语句

```mysql
create table test2 as select * from test ; //
```

### 修改表结构 alter

① 添加列

```mysql
alter table table_name add(
	column_name datetype [default expr],
	...
);
```

② 修改列

```mysql
alter table table_name modify column_name datatype [default expr] [first|after col_name];
```

③ 删除列

```mysql
alter table table_name drop column_name,
```

④ 删除表

```mysql
drop table table_name;
```

⑤ 修改列名

```mysql
alter table table_name change old_col_name new_col_name datetype;
```

⑥ 修改表名

```mysql
alter table table_name rename to new_table_name;
```



### 数据库约束

约束是在表上强制执行的数据校验规则,通过约束可以更好地保证数据表里数据的完整性.

① NOT NULL ② UNIQUE ③ PRIMARY KEY ④ FOREIGN KEY  ⑤ CHECK (MySQL不支持.)

#### NOT NULL

```mysql
声明时定义
create table test_not_null
(
	id int not null,
    name varchar(255) default "name",
);
声明后定义
alter table test_not_null modify name varchar(255) null;
```

#### UNIQUE

The UNIQUE constraint ensures that all values in a column are different.

Both the UNIQUE and PRIMARY KEY constraints provide a guarantee for uniqueness for a column or set of columns.

A PRIMARY KEY constraint automatically has a UNIQUE constraint.

However, you can have many UNIQUE constraints per table, but only one PRIMARY KEY constraint per table.

```mysql
create table unique_test
(
	test_id int not null,
    # 建立unique约束
    test_name varchar(255) unique,
    test_gender varchar(2) ,
    test_hobby varchar(255),
    test_school varchar(255),
    # 建立unique约束
    unique(test_gender),
    # 建立unique约束 并且指定约束名
    constraint test_uk unique(test_hobby,) 
);
#---------------------- 添加约束
alter table unique_test add unique(test_school)
#---------------------- 删除约束
alter table unique_test drop index test_uk;
```

#### PRIMARY KEY

The PRIMARY KEY constraint uniquely identifies each record in a database table.

Primary keys must contain UNIQUE values, and cannot contain NULL values.

A table can have only one primary key, which may consist of single or multiple fields.

只能有一个主键约束,但是一个主键约束可以由多个数据列组合而成.

```mysql
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (ID)
    # CONSTRAINT PK_Person PRIMARY KEY (LastName)
    # MySQL总是将所有的主键约束命名为PRIMARY
);

ALTER TABLE Persons ADD PRIMARY KEY (ID);

ALTER TABLE Persons DROP PRIMARY KEY;
```

#### FOREIGN KEY 约束

A FOREIGN KEY is a key used to link two tables together.

A FOREIGN KEY is a field (or collection of fields) in one table that refers to the PRIMARY KEY in another table.

The table containing the foreign key is called the child table, and the table containing the candidate key is called the referenced or parent table.

Look at the following two tables:

"Persons" table:

| PersonID | LastName      | FirstName | Age    |
| -------- | ------------- | --------- | ------ |
| **1**    | **Hansen**    | **Ola**   | **30** |
| **2**    | **Svendson**  | **Tove**  | **23** |
| **3**    | **Pettersen** | **Kari**  | **20** |

| OrderID | OrderNumber | PersonID |
| ------- | ----------- | -------- |
| **1**   | **77895**   | **3**    |
| **2**   | **44678**   | **3**    |
| **3**   | **22456**   | **2**    |
| **4**   | **24562**   | **1**    |

Notice that the "PersonID" column in the "Orders" table points to the "PersonID" column in the "Persons" table.

The "PersonID" column in the "Persons" table is the PRIMARY KEY in the "Persons" table.

The "PersonID" column in the "Orders" table is a FOREIGN KEY in the "Orders" table.

The FOREIGN KEY constraint is used to prevent actions that would destroy links between tables.

The FOREIGN KEY constraint also prevents invalid data from being inserted into the foreign key column, because it has to be one of the values contained in the table it points to.

```mysql
CREATE TABLE Persons (
    PersonID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (PersonID)
);

CREATE TABLE Orders (
    OrderID int NOT NULL,
    OrderNumber int NOT NULL,
    PersonID int,
    PRIMARY KEY (OrderID),
    FOREIGN KEY (PersonID) REFERENCES Persons(PersonID)
);
# To allow naming of a FOREIGN KEY constraint, and for defining a FOREIGN KEY constraint on multiple columns, use the following SQL syntax:
CREATE TABLE Orders (
    OrderID int NOT NULL,
    OrderNumber int NOT NULL,
    PersonID int,
    PRIMARY KEY (OrderID),
    CONSTRAINT FK_PersonOrder FOREIGN KEY (PersonID) REFERENCES Persons(PersonID)
);
# To create a FOREIGN KEY constraint on the "PersonID" column when the "Orders" table is already created, use the following SQL:
ALTER TABLE Orders
ADD FOREIGN KEY (PersonID) REFERENCES Persons(PersonID);
# To allow naming of a FOREIGN KEY constraint, and for defining a FOREIGN KEY constraint on multiple columns, use the following SQL syntax:
ALTER TABLE Orders
ADD CONSTRAINT FK_PersonOrder
FOREIGN KEY (PersonID) REFERENCES Persons(PersonID);
#To drop a FOREIGN KEY constraint, use the following SQL:
ALTER TABLE Orders
DROP FOREIGN KEY FK_PersonOrder;
```

+--------------------------------------------------------------+

### 索引

Indexes are used to retrieve data from the database very fast. The users cannot see the indexes, they are just used to speed up searches/queries.

The CREATE INDEX statement is used to create indexes in tables.

**Note:** Updating a table with indexes takes more time than updating a table without (because the indexes also need an update). So, only create indexes on columns that will be frequently searched against.

#### CREATE INDEX Syntax

Creates an index on a table. Duplicate(重复的) values are allowed:

```mysql
CREATE INDEX index_name
ON table_name (column1, column2, ...);

CREATE INDEX idx_lastname
ON Persons (LastName);
```

#### CREATE UNIQUE INDEX Syntax

Creates a unique index on a table. Duplicate values are not allowed:

```mysql
CREATE UNIQUE INDEX index_name
ON table_name (column1, column2, ...);
CREATE UNIQUE INDEX idx_PersonID
ON Persons (PersonID);
```

#### DROP INDEX Statement

```mysql
ALTER TABLE Persons
DROP INDEX PersonID;
```



#### 创建索引

① 自动创建:当在表上定义unique约束、primary约束、外键约束时,系统为该数据列自动创建对应的索引.

② 手动创建:

```mysql
create index index_name on table_name
(
	
);
```

### 视图

In SQL, a view is a virtual table based on the result-set of an SQL statement.

A view contains rows and columns, just like a real table. The fields in a view are fields from one or more real tables in the database.

You can add SQL functions, WHERE, and JOIN statements to a view and present the data as if the data were coming from one single table.

#### SQL CREATE VIEW Examples

```mysql
create or replace view view_name
as
select LastName,FirstName from Persons
with check option; //不允许修改视图的数据.
```

#### SQL CREATE VIEW Examples

```mysql
DROP VIEW view_name;
```





