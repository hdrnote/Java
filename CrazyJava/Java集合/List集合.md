# List集合

List集合代表一个元素有序,可重复的集合.

它是Collection接口的子接口.

它的方法使用看API.

**Java8为List新增了sort()和replaceAll()**

sort()需要一个Comparator对象来控制元素排序.

replaceAll()需要一个UnaryOperator(一个函数式接口)来替换所有集合元素.

**List不仅具有iterator方法,还有listIterator方法**

该方法返回一个listIterator对象.

ListIterator接口继承了Iterator接口,并添加了以下方法

boolean hasPrevious()

Object previous()

void add(Object o)

## ArrayList 和 Vector实现类

ArrayList与Vector用法上几乎没啥区别,但是尽量不要用Vector.

## 固定长度的List

操作数组的工具类Arrays提供了asList(Object... a)方法,该方法可以把一个数组,或指定数量的对象转换成一个List集合.

这个List集合是Arrays的内部类ArrayList的实例.是一个固定长度的List,只可以访问里面的元素,不可以修改.



## LinkedList实现类

