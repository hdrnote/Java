# LinkedList类

Java LinkedList (链表) 使用双重链表来存储数据.

### 重点

- 可以存储重复元素
- 可以保留插入顺序
- 非异步
- 插入和删除操作很快
- 可以用作列表,队列,栈

### 构造方法

```java
LinkedList();
LinkedList(Collection c)
```

### 操作方法

```java
boolean add(Object o); 
void add(int index,Object o);
void addFirst(Object o);
void addLast(Object o);
boolean remove(Object o);
boolean contains(Object o);
Object getFirst();
Object getLast();
int indexOf(Object o);
int lastIndexOf(Object o);
```

# 数组列表与链表的区别

**数组列表适合与排序与查找**

**链表适合用于添加和删除**

