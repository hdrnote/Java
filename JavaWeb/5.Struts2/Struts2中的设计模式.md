# Struts2中的设计模式

**设计模式:程序员反复实践后形成的一套代码设计经验的总结**

在深入探讨Struts2所依赖的核心技术之前,我们先来了解以下Sturts2中常见的设计模式

## ThreadLocal模式

严格上来说,ThreadLocal模式算不上是一种设计模式,它只是用来解决多线程程序中数据共享问题的一个方案.

为什么要在Struts2中引入ThreadLocal模式呢?这就要说说Web开发中线程安全问题.

### 线程安全问题的由来

在传统的Java Web开发中,Web容器收到一个Http请求时,Web容器会从事先定义好的线程池中,抽取一个线程来处理请求.

由这个线程来执行Servlet对象中的service方法.

但是由于Servlet是单例模式,所以,如果有两个线程同时对同一个Servlet对象进行操作,那么它们操作的结果是难以预测的.

### ThreadLocal模式的实现机制

线程对面有一个变量 threadLocals 它用来存储属于这个线程对象的变量

```java
public class Thead implements Runnable{
    // 省略一堆代码
    ThreadLocal.ThreadLocalMap threadLocals = null;  // 这就是用来存储线程本地变量的地方
}
```

1.创建ThreadLocal对象

2.通过ThreadLocal对象的set方法,把需要实现多线程安全的变量,添加到线程的本地变量中.

3.通过ThreadLocal对象的get方法,获取该变量.

**有点抽象,看个例子吧**

```java
public class ThreadLocalDemo {
    public int counter = 5; // 需要实现线程安全的变量
    ThreadLocal<Integer> threadLocal = new ThreadLocal<>(); // 创建一个ThreadLocal对象

    
    public void set2Thread() {
        // 把变量counter复制一份，添加到线程的本地变量中
        threadLocal.set(counter);
    }
    
    public Integer getFromThread() {
        // 获取线程的本地变量中的counter变量
        return threadLocal.get();
    }
}
```



```java
public class Demo {
    public static void main(String[] args) throws InterruptedException {
        // 创建ThreadLocalDemo对象
        ThreadLocalDemo tld = new ThreadLocalDemo();
        // 把ThreadLocalDemo对象中的counter变量添加到线程的本地变量中.
        tld.set2Thread();
        // 从线程的本地变量中获取counter
        Integer counter = tld.getFromThread();
        System.out.println(counter);
        counter -= 1;
        System.out.println(counter);

        Thread thread = new Thread(){
            public void run(){
                tld.set2Thread();
                Integer counter = tld.getFromThread();
                System.out.println(counter);
                counter -= 1;
                System.out.println(counter);
            }
        };
        thread.start();
        thread.join();

        // 证明上面的操作并没有影响到tld对象中的counter变量
        System.out.println(tld.counter);
    }
}
```

ThreadLocal模式至少从两个方面完成了数据访问隔离.

纵向隔离:线程与线程之间的数据访问隔离.

横向隔离:同一个线程中,不同的ThreadLocal实例操作的对象之间相互隔离.这一点由ThreadLocalMap在存储时,采用当前ThreadLocal的实例作为Key来保证.

### ThreadLoad模式与synchronized关键字比较

后者依靠JVM锁的机制来实现同一时间只有一个线程访问变量.

#### 这个ThreadLocal模式真的有点难理解,日后再说

---

## Decorator 装饰模式

**装饰模式的基本含义是能够动态地为一个对象添加一些额外的行为.**

说道扩展对象行为,你可能会想到继承.

通过使用继承我们可以获得两种扩展特性

- 修改现有对象的行为  (重写父类的方法)
- 添加新的行为  (在子类添加新方法)

### 通过继承来扩展对象的行为有一些弊端.

- "继承"为对象引入的是一种"静态"的特性扩展,扩展的特性在运行编译时期就会被添加到对象上.也就是说无法根据运行时的情况,对对象进行特定的特性扩展.
- 随着子类的增多,各种子类的组合将导致子类极度膨胀.

**装饰模式就是为了解决过度依赖使用继承来扩展对象功能这一问题而设计的**

装饰模式的基本实现示意图

![](https://github.com/HuangYiCheng1997/create-picture-url/blob/master/java/CrazyJava/%E8%A3%85%E9%A5%B0%E6%A8%A1%E5%BC%8F%E7%9A%84%E5%9F%BA%E6%9C%AC%E5%AE%9E%E7%8E%B0%E7%A4%BA%E6%84%8F%E5%9B%BE.png?raw=true)

Component (原始接口) --- 定义了一个接口方法

TargetComponent(默认目标实现类) --- 对于原始接口的默认实现方式. 同时也是有待扩展的类.

ComponentDecorator(装饰实现类) --- 同样实现了原始接口,既可以是抽象类也可以是具体实现类.内部封装了一个targetComponent实例

ComponentDecoratorA/B --- 对ComponentDecorator实例中的targetComponent实例进行行为扩展

### 装饰起模式的应用场景与案例

#### 场景:

对TargetComponent中的多个接口进行排列组合调度

对TargetComponent进行选择性扩展

TargetComponenet未知或不易扩展的情况

#### 案例

有点难理解,日后再说

----

## 策略模式

P101



