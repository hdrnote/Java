# 集合

集合只保存对象,数组既可以保存对象,也可以保存基本类型.

所有的集合类都存放在Java.util包下.

集合类主要是由Collection和Map这个两个接口派生而出.

## Collection接口

Collection接口是List、Set 、Queue 接口的父接口.

Collection接口里定义了如下操作集合元素的方法.

```java
boolean add(Object o) ; //添加元素,成功返回true;
boolean addAll(Collection c) ;//把集合c添加到指定集合.
void clear() ;//清除集合里所有元素
boolean contains(Object o);//判断是否包含Object o
boolean containsALL(Collection c);//判断集合是否包含集合C
boolean isEmpty(); // 判断集合是否为空
Iterator iterator(); //返回一个Iterator对象.
boolean remove(Object o);//从集合中移除对象
boolean removeAll(Collection c);//从集合中移除集合C中的对象
boolean retainAll(Collection c);//删除集合中不属于集合C的对象
int size();//返回集合中对象个数
Object[] toArray();//把集合转换成一个数组
```

## 遍历集合

有三种方法遍历集合.

① 直接遍历法

② 调用Iterable接口的方法.

③ 调用Iterator接口的方法.

### 直接遍历法

```java
for (Object obj:books){}
```

### 调用Iterable接口的方法

Iterable接口提供了一个forEach(Consumer action)默认方法.

该方法的参数Consumer action是一个函数式接口,它有唯一的抽象方法accept().

当程序调用Iterable的forEach方法遍历集合时,集合元素会依次传递到accept方法.

因为Iterable是Collection的父接口,所以Collection集合也可以调用该方法.

```java
Collection books = new HashSet();
books.add("Think in Java");
books.add("Hello World");
books.forEach(obj->System.out.println(obj));
```

### **调用Iterator接口的方法**

使用Iterator接口有两种途径可以实现遍历集合

① 利用Iterator接口下面这三个方法,实现遍历集合的操作.

```java
boolean hasNext();
Object next();
void remove(); //在集合中删除 next返回的那个元素.
```

```java
Collection books = new HashSet();
books.add("Think in Java");
books.add("Hello World");
Iterator it = books.iterator(); //调用集合方法生成一个迭代器对象
while(it.hasNext())
{
    String book = (String) it.next();
    System.out.println(book);
}
```

② 利用Iterator接口的foeEachRemaining()方法.

```java
Collection books = new HashSet();
books.add("Think in Java");
books.add("Hello World");
Iterator it = books.iterator(); //调用集合方法生成一个迭代器对象
it.forEachRemaining(obj->System.out.println(obj));
```

## Java8新增的集合操作

**① Predicate 与 removeIf**

Predicate(断言)是个函数式接口.里面的唯一抽象方法是 boolean test(T t).

removeIf是Java8为Collection集合新增的方法.

它的参数是Predicate filter

总而言之,重写Predicate的test方法,然后传递给removeIf 使用.

```java
Collection books = new HashSet();
books.add("Think in Java");
books.add("Hello World");
System.out.println(books);
books.removeIf(ele->((String)ele).equals("Think in Java"));
System.out.println(books);
```

**② Stream操作**

...............................