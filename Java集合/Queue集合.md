# Queue接口

Queue接口有一个PriorityQueue实现类.有一个Deque接口.

Deque接口有ArrayDeque和LinkedList实现类 .

## PriorityQueue类

① PriorityQueue顾名思义,优先次序队列,队列里的元素不是按加入顺序排列的,而是按照大小进行重新排序的.

② 不允许插入null元素

③ 它的toString方法输出的内容 即不按大小排序,又不按加入顺序排列.

④ 这玩意有两种排序方式 自然排序 定制排序. 跟TreeSet一样.

## Deque接口

Queue接口的子接口,操作方法看API

## ArrayDeque类

基于数组实现的双端队列,创建Deque时可以指定一个numElements参数指定数组的长度.









