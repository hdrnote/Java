# ArrayList类

Java的ArrayList (数组列表) , 使用动态数组来存储元素.

### 关于数组列表的重点

- 可以储存相同的元素
- 会记住元素的插入顺序
- 是非异步的
- 通过索引实现随机存取
- 插入和删除操作很慢

### 数组列表的构造方法

```java
ArrayList(); // 创建一个空的数组列表
ArrayList(Collection c); 
ArrayList(int capacity); // 创建一个数组列表,指定容量
```

### 数组列表的操作方法

```java
boolean add(Object element);// 添加元素到数组列表末端
void add(int index,Object element);// 添加元素到指定索引
boolean addAll(Collection c);// 除去交集
boolean addAll(int index , Coolection c);
void clear();
int indexOf(Object o);
int lastIndexOf(Object o);
void trimToSize(); //使数组列表容量等于当前元素个数.
Object[] toArray();
Object clone();
```

### 例子

```java
public class ArrayListDemo {
    public static void main(String[] args){
        ArrayList<String> nameList = new ArrayList<>();
        nameList.add("hdr");
        nameList.add("hyc");

        //遍历
        for(String name : nameList){
            System.out.println(name);
        }
        //iterable接口的forEach方法
        nameList.forEach(name-> System.out.println(name));
        //
        Iterator<String> iterator = nameList.iterator();
        iterator.forEachRemaining(name-> System.out.println(name));
    }
}
```

