# Set集合

通常不能记住元素的加入顺序,而且不允许相同的对象存在.

分类:① HashSet集合 ② TreeSet集合 ③ EnumSet集合

## HashSet集合

HashSet是Set接口的典型实现,大多数时候都是使用它.

**特点:**

① 不能保证元素的排列顺序

② HashSet不是同步的,如果多个线程同时访问一个HashSet,必须通过代码保证其同步.

③ 集合对象可以是null

**存储原理**

向HashSet集合中插入一个对象时,HashSet调用该对象的hashCode()方法来获得该对象的hashCode值.

然后根据值决定对象在HashSet中的存储位置.

如果两个元素通过equals()方法比较返回true,但是hashCode值不相同,则会将他们存储在不同的位置.

**注意事项:**

对象通过equals方法比较返回true,则他们的hashCode值也应该一样,否则就会跟Set集合的规则发生冲突.

### 重写hashCode()方法的基本准则

① 同一个对象多次调用hashCode()方法应该返回相同的值

② 对象通过equals方法比较返回true,则他们的hashCode值也应该一样

③ ??????

当想HashSet中添加可变对象时,必须十分小心.如果修改HashSet集合中的对象,有可能导致该对象与集合中其他对象相等,从而导致HashSet无法准确访问该对象.

### LinkedHashSet类

顾名思义,线性HashSet集合.

## TreeSet类

TreeSet是SortedSet接口的实现类,顾名思义,表里面的元素是经过排序的.

TreeSet采用红黑树的数据结构来存储集合元素.

与HashSet集合相比,TreeSet提供了如下几个额外的方法.

```java
Comparator comparator() //返回制定排序所使用的Comparator,如果是自然排序则返回null
Object first() //返回集合中的第一个元素
Object last() //返回集合中最后一个元素
Object lower(Object e) // 返回集合中位于指定元素之前的元素
Object higher(Object e) // 返回集合中位于指定元素之后的元素
SortedSet subSet(Object startEle,Object endEle) //返回子集,从开始到结束,左开右闭
SortedSet headSet(Object toEle)//返回Set的子集,小于toEle的对象
SortedSet tailSet(Object fromEle)//返回Set的子集,大于等于fromEle的对象
```

### TreeSet的两种排序方法

1.自然排序 2.自定义排序

**自然排序**

TreeSet调用集合元素的compareTo(Object obj)方法来比较元素之间的大小关系,然后将集合元素按升序排列.

TreeSet判断元素是否相同的唯一标准是 compareTo方法是否返回0.

也就是说放进TreeSet的对象都需要实现compareTo()方法

compareTo(Object obj) 方法定义于 Comparable接口,实习该接口的类的对象就可以比较大小.

a小于b 返回负数;  a=b 返回0; a大于b 返回整数;

**实现了Comparable接口的常用类.**

① BigDecimal 、BigInteger 以及所有数值类型对应的包装类.

② Character:按字符的UNICODE值进行比较.

③ Boolean:true对应的包装类实例大于false对应的包装类

④ String:按字符串**中字符**的UNICODE值进行比较.

⑤ Date 、 Time

**为什么为了让TreeSet能够正常运行,TreeSet只能添加同一种类型的对象?**

① 大部分类的compareTo()方法,只有在对象类型相同时才会比较大小.

② 虽然自定义类的compareTo()方法可以实现不同类型对象的比较,

但当取出TreeSet里的元素时,不同类型的元素依然后发生ClassCastException

注意:尽量不要把可变对象放进TreeSet,否则后面程序修改了该对象,有可能导致该对象与集合中的其他对象compareTo 为0

TreeSet只可以删除没有被修改且不与其他被修改实例变量的对象重复的对象

**自定义排序**

如果需要自定义排序,则需要在创建TreeSet集合的时候,提供一个Comparator对象.

```java
import java.util.Comparator;
import java.util.TreeSet;

class M {
	int age;

	public M(int age) {
		this.age = age;
	}

	public String toString() {
		return "M[age:" + age + "]";
	}
}

public class Demo {

	public static void main(String[] args) throws CloneNotSupportedException {
		Comparator cpt = (o1,o2)->{
			M m1 = (M)o1;
			M m2 = (M)o2;
			return m1.age>m2.age ? -1 : m1.age<m2.age ? 1:0;
		};
		TreeSet<M> ts = new TreeSet(cpt);
		ts.add(new M(5));
		ts.add(new M(2));
		ts.add(new M(4));
		System.out.println(ts);
	}
}
```

## EnumSet类



## 各Set实现类的性能分析

HashSet的性能总是比TreeSet好,但是如果要保持排序,那就只能是TreeSet了.

EnumSet是所有Set实现类中性能最好的,但它只能保存同一个枚举类的枚举值作为集合元素.

另外这三种集合都不是线程安全的.









