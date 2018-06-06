# Map集合

Map集合,类似与Python的字典,又叫关联数组.

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

