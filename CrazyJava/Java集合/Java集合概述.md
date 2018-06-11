# collection (集合)

collection只保存对象,数组既可以保存对象,也可以保存基本类型.

所有的集合类都存放在Java.util包下.

collection 有两个接口,分别是Collection和Map.

![](https://github.com/HuangYiCheng1997/create-picture-url/blob/master/java/CrazyJava/JavaCollection.png?raw=true)

# Collection接口

**Collection接口是List、Set 、Queue 接口的父接口.**

## Collection接口中定义的方法

```java
boolean add(Object o) ; //添加元素,成功返回true;
boolean addAll(Collection c) ;//把集合c添加到指定集合.
boolean remove(Object o);//从集合中移除对象
boolean removeAll(Collection c);//从集合中移除集合C中的对象
boolean retainAll(Collection c);//删除集合中不属于集合C的对象
void clear() ;//清除集合里所有元素

boolean isEmpty(); // 判断集合是否为空
int size();//返回集合中对象个数
boolean contains(Object o);//判断是否包含Object o
boolean containsALL(Collection c);//判断集合是否包含集合C

Object[] toArray();//把集合转换成一个数组
Iterator iterator(); //返回一个Iterator对象.
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

### 调用Iterable接口的forEach方法

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



# Map接口

Map (mappings 映射),类似与Python的字典.

**常用方法**

```java
void clear();
boolean containsKey(Object key);
boolean containsValue(Object value);
Set entrySet();//返回Map中包含的Key-Value对所组成的Set集合,集合中每个元素都是Map.Entry对象.
Object get(Object key);
boolean isEmpty();
Set KeySet();
Object put(Object key,Object value);
void putAll(Map m);
Object remove(Object key);
boolean remove(Object key,Object value); //Java8 新增方法
int size();
Collection values();
```

## Entry类

Entry类是Map的内部类,封装了一个key-value对.

提供了下面三个方法

```java
Object getKey();
Object getValue();
Object setValue(V value);
```

## Java8 新增的方法

```java
//到时候用上再查吧..................
```

