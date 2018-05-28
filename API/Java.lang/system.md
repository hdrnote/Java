## Class System

```java
public final class System extends Object
```

The `System` class contains several useful class fields and methods. It cannot be instantiated.

Among the facilities provided by the `System` class are standard input, standard output, and error output streams; 

access to externally defined properties and environment variables;

 a means of loading files and libraries; and a utility method for quickly copying a portion(部分) of an array.

### Common Use Method 

```java
static long	currentTimeMillis();
// Returns the current time in milliseconds.
static Console	console();
// Returns the unique Console object associated with the current Java virtual machine, if any.
static void	exit(int status);
// Terminates the currently running Java Virtual Machine.
static Map<String,String>	getenv();
// Returns an unmodifiable string map view of the current system environment.
static String	getenv(String name);
// Gets the value of the specified environment variable.
```

