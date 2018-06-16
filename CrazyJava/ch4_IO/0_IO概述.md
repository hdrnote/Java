

# Java IO 概述

Java IO 是一套Java用来读写数据（输入和输出）的API。

大部分程序都要处理一些输入，并由输入产生一些输出。Java为此提供了java.io包。 

Java的IO包主要关注的是从原始数据源中读取数据以及输出数据到目标媒介。 

**典型的数据源和目标媒介**

- 文件
- 管道
- 网络连接
- 内存缓存
- Java标准输入、输出、（System.in System.out System.error）

## 文件

在Java应用程序中，文件是一种常用的数据源或者存储数据的媒介。 

## 管道

Java IO中的管道为运行在同一个JVM中的两个线程提供了通信的能力。 

请记得，当使用两个相关联的管道流时，务必将它们分配给不同的线程。

read()方法和write()方法调用时会导致流阻塞，如果你尝试在一个线程中同时进行读和写，可能会导致线程死锁。 

## System.in System.out System.error

System.in, System.out, System.err这3个流同样是常见的数据来源和数据流目的地。

其中使用最多的可能是在控制台程序里利用System.out将输出打印到控制台上。 

JVM启动的时候通过Java运行时初始化这3个流，所以你不需要初始化它们，当然，如果你想，你可以替换掉她们。

### System.in

System.in是一个典型的连接控制台程序和键盘输入的InputStream流。

通常当数据通过命令行参数或者配置文件传递给命令行Java程序的时候使用。 

### System.out

System.out是一个PrintStream流。System.out一般会把你写到其中的数据输出到控制台上。

System.out通常仅用在类似命令行工具的控制台程序上。 

### System.err

System.err是一个PrintStream流。System.err与System.out的运行方式类似，但它更多的是用于打印错误文本。 

**替换系统流**

```java
public class Demo {
    public static void main(String[] args) throws FileNotFoundException {
        File file = new File("C:\\Users\\hdr\\Desktop\\testOut.txt");
        PrintStream ps = new PrintStream(new FileOutputStream(file));
        System.setOut(ps);
        System.out.print("Hello World");
        System.out.flush();
    }
}
// 现在所有的System.out都将重定向到”c:\\data\\system.out.txt”文件中。
// 请记住，务必在JVM关闭之前调用flush()，确保System.out把数据输出到了文件中。
```

**Java IO的用途**

- 文件访问
- 网络访问
- 内存缓存访问
- 线程内部通信(管道)
- 缓冲
- 过滤
- 解析
- 读写文本
- 读写基本类型数据
- 读写对象