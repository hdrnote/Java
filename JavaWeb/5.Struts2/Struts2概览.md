# Struts2概览

## 从外部描述Struts2

从外部描述Struts2,我们可以通过这三方面.

- 运行环境
- 应用场景
- 核心技术

### 运行环境

Struts2是一个运行与Web容器的表示层框架,其核心内容就是与Web容器打交道,核心作用是帮助我们处理Http请求.

因此,Struts2的运行环境是Web容器.

### 应用场景

当需要建立一个由复杂的业务逻辑和众多页面构成的Web应用时,Struts2可以作为表示层的解决方案.

### 核心技术

Struts2并不是一个独立的框架,它的实现不仅依赖基本的Web开发标准,还依赖与一些其它开源框架和解决方案.

#### Struts2与表示层技术

Struts2是运行在Web容器中的,因此它的核心依赖就是Web容器对Servlet标准和JSP标准的支持.

#### Struts2与设计模式

实际上所有设计模式只不过是代码级别最佳实践的具体表现.

Struts2中使用了不少的设计模式,之后我们会详细讲解.

#### Struts2与OGNL

Struts2作为表示层的处理框架,势必需要实现Web应用与Java程序的沟通.

而表达式引擎可以在一定程度上实现该要求,

表达式引擎:通过程序建立起某个实体对象与某种公式表达之间的联系

在Java世界,这种联系表现为:使用某些符合特定规则的字符串来读写Java中的对象.

**OGNL表达式引擎是Struts2运行所依赖的基本核心技术之一.**

#### Struts2与XWork

XWork是另一个开源项目.

XWork不仅提供了一系列基础构件,并且在这些构件上,实现了一套基于Command设计模式的"事件请求执行框架".

**什么是事件请求执行框架?**

首先,这是一个基于"请求-响应"的处理器,能对请求做出相应的处理,并返回结果.

其次,它定义了一套完整的事件逻辑处理的步骤,并且为每个步骤都提供了足够的扩展接口,从而大大提升程序的可扩展性.

---

## 从内部透析Struts2

### 入口

Struts2的核心入口程序,从功能上讲必须要能够处理Http请求,这是作为表示层框架的基本要求.

因此Struts2遵循Servlet标准,通过实现标准的Filter接口来进行Http请求的处理.

因此,我们通过在web.xml中设置filter来引入Struts2框架.

```xml
<filter-mapping>
        <filter-name>struts2</filter-name>
        <url-pattern>/*</url-pattern>
    </filter-mapping>

    <filter>
        <filter-name>struts2</filter-name>
        <filter-class>
            org.apache.struts2.dispatcher.filter.StrutsPrepareAndExecuteFilter
        </filter-class>
    </filter>
```

#### Struts2的运行逻辑可分为两条主线

- Struts2的初始化:init方法驱动执行
- Struts2处理Http请求:doFilter方法驱动执行

![](https://github.com/HuangYiCheng1997/create-picture-url/blob/master/java/CrazyJava/Struts2%E7%9A%84%E8%BF%90%E8%A1%8C%E9%80%BB%E8%BE%91.png?raw=true)

#### Struts2的初始化主线

Struts2的初始化主线发生在Web应用启动之初,它只执行一次,要是执行失败则整个Web应用启动失败.

**Struts2的初始化的工作内容**

- 对框架元素进行初始化  (框架内置对象的创建和缓存)
- 检查框架运行的必要条件 (检验运行参数和执行模式被正确的设置)

#### Struts2的Http请求处理主线

- Http请求预处理 (程序由Struts2控制,主要与Web容器打交道,对Http进行预处理,把请求中的数据转换成Java对象)
- XWork执行业务逻辑 (程序由XWork控制,执行具体的业务逻辑)

**综上所述,其实XWork才是真正实现MVC的框架,Struts2其实只是对Http请求进行预处理**

**基于这种设计方式,实现了Web容器与MVC分离的效果,这也是Struts2区别与其他Web框架的最重要的特性**

----

## 用显微镜观察Struts2

在了解了Struts2的宏观面后,我们来探讨一下构成这些宏观面的微观元素.

(现在看不懂无所谓,后面会详细讲)

### 第一条主线 Struts2的初始化

