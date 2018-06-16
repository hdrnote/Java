# Collections

Java提供了一个操作Set List 和 Map等集合的工具类:Collections.

## 排序操作

对List集合进行排序的常用方法

```java
void reverse(List list);
void shuffle(List list);//shuffle(洗牌) 随机排序
void sort(List list);
void sort(List Comparator c);
void swap(List list,int i , int j);//索引i和j的值互换
void rotate(List list, int distance);//前distance个元素移动到后面.
```

## 查找、替换操作

```java
int binarySearch(List list,Object coll);
Object max(Collection coll);
Object max(Collection coll,Comparator c);
Object min(Collection coll);
Object min(Collection coll,Comparator c);
vodi fill(List list, Object obj); //一个对象替换List中所有元素
int frequency(Collection c, Object o);
int indexOfSubList(List source , List target);//子List在父List中第一次出现的位置索引
int lastIndexOfSubList(List source , List target);
boolean replaceAll(List list,Object oldVal,Object newVal);
```

## 同步控制

## 设置不可变集合

