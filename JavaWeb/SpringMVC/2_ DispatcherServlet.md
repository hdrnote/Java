# DispatcherServlet

 像许多其他Web框架一样，Spring MVC框架也是围绕前端控制器模式进行设计。

前端控制器模式（Front Controller Pattern）是用来提供一个集中的请求处理机制，所有的请求都将由一个单一的处理程序处理。该处理程序可以做认证/授权/记录日志，或者跟踪请求，然后把请求传给相应的处理程序。 

以下是这种设计模式的实体。 

- **前端控制器（Front Controller）** - 处理应用程序所有类型请求的单个处理程序，应用程序可以是基于 web 的应用程序，也可以是基于桌面的应用程序。
- **调度器（Dispatcher）** - 前端控制器可能使用一个调度器对象来调度请求到相应的具体处理程序。
- **视图（View）** - 视图是为请求而创建的对象。

在Spring MVC中，统一处理HTTP请求的就是**DispatcherServlet**。

跟任何Servlet一样，DispathcherServelt同样需要按照Servlet规范，通过Java配置或者在web.xml中进行声明和映射。

```xml
    <servlet>
        <servlet-name>SpringMVC</servlet-name>
        <servlet-class>org.springframework.web.servlet.DispatcherServlet</servlet-class>
        <load-on-startup>1</load-on-startup>
    </servlet>

    <servlet-mapping>
        <servlet-name>SpringMVC</servlet-name>
        <url-pattern>/</url-pattern>
    </servlet-mapping>
```

在程序运行期间，DispatcherServlet会根据Spring 配置来查找 **处理相应请求的组件**，**view resolution**（不知道翻译成什么）**异常处理**（exception handling）等。

## 上下文层次结构 （Context Hierarchy）

DispatcherServlet 需要一个 WebApplicationContext 来构造它本身。

WebApplicationContext有一个指向它所关联的ServletContext和Servlet的链接。

