## Python数据类型及基本用法



一、Python中常用的6种（数据）的类型

| 类型               | 描述                                                         | 说明                                             |
| ------------------ | ------------------------------------------------------------ | ------------------------------------------------ |
| 数字(Number)       | 支持：<br>整数（int）<br>浮点数（float）<br>复数（complex)<br>布尔（bool） | 复数如 : 4+3j，以j结尾表示复数                   |
| 字符串（String）   | 描述文本的一种数据类型                                       | 由任意字符组成                                   |
| 列表（List）       | 有序的可变序列                                               | Python中使用最频繁的数据类型，可有序记录一堆数据 |
| 元祖（Tuple）      | 有序的不可变序列                                             | 可有序记录一堆不可变的Python数据集合             |
| 集合（Set）        | 无序不重复集合                                               | 可无序记录一堆不重复的Python数据集合             |
| 字典（Dictionary） | 无序 Key-Value集合                                           | 可无序记录一堆Key-Value型的Python数据集合        |

二、type()语句使用方式

在print语句中，直接输出类型信息：

例如

```python
print(type("hello"))
```

三、数据类型的转换

| 语句（函数） | 说明                |
| ------------ | ------------------- |
| int(x)       | 将x转换为一个整数   |
| float(x)     | 将x转换为一个浮点数 |
| str(x)       | 将对象x转换为字符串 |

四、算术运算符

| 运算符 |  描述  |                         实例                          |
| :----: | :----: | :---------------------------------------------------: |
|   //   | 取整除 | 返回商的整数部分 9//2输出结果4，9.0//2.0输出结果是4.0 |
|   /    |   除   |                  5 / 2 输出结果是2.5                  |
|   **   |  指数  |                   a**b表示a的b次方                    |

五、字符串

在Python中，如果想要定义的字符串本身，是包含：单引号、双引号自身，可以按下面的写法：

+ 单引号定义法，可以内含双引号
+ 双引号定义法，可以内含单引号
+ 可以使用转义字符 \ 来讲引号解除效用，变成普通字符串

 字符串无法和数字或其他数据类型用 **+** 号完成拼接

可以通过如下语法，完成字符串和其他变量的快速拼接。

```python
# name = "world"
name = 123
message = "hello %s" % name
print(message)
```

其中的，%s

- % 表示：我要占位
- s 表示：将变量变成字符串，放入占位的地方

所以，综合起来的意思就是：我先占个位置，等一会有个变量过来，我把它变成字符串放到要占位的位置

`多个变量占位，变量要用括号括起来，并按照占位的顺序填入`

例如：

```python
num = 57
avg_salary = 16781
message = "Python大数据学科，北京%s期，毕业平均工资：%s" % (num, avg_salary)
print(message)
```

常用的三类数据类型占位

| 格式符号 |               转化               |
| :------: | :------------------------------: |
|    %s    | 将内容转换成字符串，放入占位位置 |
|    %d    |  将内容转换成整数，放入占位位置  |
|    %f    | 将内容转换成浮点型，放入占位位置 |

字符串格式化-数字精度的控制：

我们可以使用辅助符号"m.n"来控制数据的宽度和精度

- m，控制宽度，要求是数字，**设置的宽度小于数字自身，不生效**
- .n，控制小数点精度，要求是数字，**会进行小数的四舍五入**

示例：

> %5d：比如数字11，就会变成：\[空格]\[空格]\[空格]11, 用三个空格补足宽度
>
> %5.2f：表示将宽度控制为5，将小数点精度设置为2
>
> 小数点和小数部分也算入宽度计算。如，对11.345设置了 %7.2f 后，结果是：\[空格]\[空格]11.35。2个空格补足宽度，小数部分限制2位精度后，四舍五入为.35

除此之外，另外一种字符串格式化也相当方便，那就是下面这种：

> f"内容{变量}"的格式来快速格式化

```python
name = "xx博客"
set_year = 2006
stock_price = 19.99
print(f"我是{name}，我成立于：{set_year}年，我今天的股价是：{stock_price}")
```

## 数据输入与输出

一、数据的输入

1) input() 语句的功能是获取键盘输入的数据
2) 可以使用：input(提示信息)，用以在使用者输入内容之前显示提示信息。
3) 要注意，无论键盘输入什么类型的数据，input 获取到的数据**永远都是字符串类型**

对于在 oj 上使用Python来刷题时，我们可以使用下面语句来实现带空格的多个数据的输入

```python
a, b = map(int, input().strip().split())
```

这行代码实现了将用户输入的两个整数存储到变量a和b中的功能。具体来说，代码的含义如下：

> 1. `input()`函数用于读取用户在命令行中输入的内容。
>
> 2. `strip()`函数用于去掉用户输入内容中的前后空格以及换行符。
>
> 3. `split()`函数用于将用户输入内容按照空格分割成多个字符串。
>
> 4. `map()`函数用于将多个字符串转换成整数。
>
> 5. `int`函数用于将字符串转换成整数
>
> 6. 最终，`a`和`b`变量分别存储了用户输入的两个整数。

**需要注意的是，这行代码假设用户输入的内容是以空格分隔的两个整数，如果用户输入的内容不符合这个格式，程序可能会出现错误。**

二、数据的输出

默认print语句输出会换行，因此，当我们需要使用print语句，**输出不换行的功能**，只需要按照如下方式写即可：

```python
print("hello", end=' ')
print("world", end=' ')
```

在 Python 中，你可以使用 `join()` 函数将一个列表中的元素以指定的分隔符连接起来。如果你需要将列表中的元素以空格隔开并输出，可以按照以下方法操作：

```python
lst = [1, 2, 3, 4, 5]
print(' '.join(str(i) for i in lst))
# 输出结果为：1 2 3 4 5
```

其中，`join()` 函数将一个可迭代对象（这里是生成器表达式）中的元素以指定的分隔符（这里是空格）连接起来，`str(i)` 将列表中的整数转换为字符串，以便与空格一起连接。

除此之外，输出列表中的元素并以空格隔开还可以通过 `*列表`的方式来实现：

如下所示：

```python
my_list = [1, 2, 3, 4, 5]
print(*my_list)
# 输出结果：1 2 3 4 5
```

上述代码中，首先定义了一个列表 `my_list`，其中包含了五个整数。接着，通过 `print(*my_list)` 的方式输出了 `my_list` 中的每一个元素，元素之间使用空格隔开。

`*my_list` 的作用是将列表 `my_list` 中的所有元素展开，作为独立的参数传递给 `print` 函数。相当于执行了 `print(1, 2, 3, 4, 5)`。这个语法称为拆包，常用于函数调用和可迭代对象中。



## Python判断语句

程序中的判断：

```python
if 条件1:
    条件1成立时，要做的事情
elif 条件2:
    条件2成立时，要做的事情
elif 条件N:
    条件N成立时，要做的事情
else:
    所有条件都不满足应该做的事情
```

通过四个空格的缩进来确定要做事情对于if的归属情况

## Python循环语句

一、while 循环基本语法

```python
while 条件:
    条件满足时，做的事情1
    条件满足时，做的事情2
    ......
```

二、for 循环基本语法

```python
for 临时变量 in 待处理数据集:
	循环满足条件时执行的代码
```

**注意：**for循环无法定义循环条件，只能被动取出数据处理

三、range 语句：

语法1：

```python
range(num)
```

获取一个从0开始，到num结束的数字序列（不包含num本身）

如range(5)取得数据是:[0,1,2,3,4]

语法2：

```python
range(num1, num2)
```

获取一个从num1开始，到num2结束的数字序列（不包含num2本身）

语法3：

```python
range(num1, num2, step)
```

获取一个从num1开始，到num2结束的数字序列（不包含num2本身）

数字之间的步长，以step为准（step默认为1）

如，range(5, 10, 2)取得的数据是：[5,7,9]

## 函数

一、函数的定义：

```python
def 函数名(传入参数):
    函数体
    return 返回值
```

函数的传参

+ 位置参数：调用函数时根据函数定义的**参数位置来传递参数**
+ 关键字参数：函数调用时通过 "键 = 值" 形式传递参数

​		作用：可以让函数更加清晰、容易使用，同时也清除了参数的顺序需求

​		例如：

```python
def user_info(name, age, gender):
    print(f"您的名字是：{name}, 年龄是：{age}，性别是：{gender}")

# 关键字传参
user_info(name = "小明", age = 20, gender = "男")
# 可以不按照固定顺序
user_info(age = 20, gender = "男", name = "小明")
# 可以和位置参数混用，位置参数必须在前，且匹配参数顺序
user_info("小明", age = 20, gender = "男")
```

+ 缺省参数：缺省参数也叫默认参数，用于定义函数，为参数提供默认值，调用函数时可不传该默认参数的值(注意：所有位置参数必须出现在默认参数前，包括函数定义和调用)

​		作用：当调用函数时没有传递参数，就会使用默认是用缺省参数对应的值

```python
def user_info(name, age, gender = '男'):
    print(f"您的名字是：{name}，年龄是：{age}，性别是：{gender}")

user_info("TOM", 20)
user_info("John", 18, "女")
```

+ 不定长参数：也叫可变参数，用于不确定调用的时候会传递多少个参数(不传参也可以)的场景

  ```python
  def user_info(*args):
      print(args)
  user_info('Tom')
  user_info('Tom', 18, '男')
  ```

  > **注意：**上述用法，传进的**所有参数**都会被args变量收集，它会根据传进参数的位置合并为一个元组(tuple)，**args是元组类型**，这就是位置传递

  ```python
  def user_info(**kwargs):
      print(kwargs)
  user_info(name='Tom', age = 18, id = 110)
  # {'name': 'Tom', 'age': 18, 'id': 110}
  ```

  > **注意：**上述用法，参数是**"键=值"**形式的情况下，所有热"键=值"都会被**kwargs接收**，同时会根据"键=值"组成字典



二、lambda匿名函数

函数的定义中

+ def 关键字，可以定义**带有名称**的函数
+ lambda 关键字，可以定义**匿名**函数(无名称)

有名称的函数，可以基于名称重复使用

无名称的匿名函数，只可**临时使用一次。**

匿名函数定义语法：

```python
lambda 传入参数: 函数体(一行代码)
```

+ `lambda` 是关键字，表示定义匿名函数
+ 传入参数表示匿名函数的形式参数，如：x, y表示接收2个形式参数
+ 函数体，就是函数的执行逻辑，要注意：只能写一行，无法写多行代码

```python
# 通过def关键字，定义一个函数，并传入
def test_func(compute):
    result = compute(1, 2)
    print(result)
    
def compute(x, y):
    return x + y

test_func(compute) # 结果3

# 上面代码也可以通过lambda关键字，传入一个一次性使用的lambda匿名函数
def test_func(compute):
    result = compute(1, 2)
    print(result)

test_func(lambda x, y: x + y) # 结果3
```

使用def和使用lambda，定义的函数功能完全一致，只是lambda关键字定义的函数是匿名的，无法二次使用



三、函数的多返回值

如果一个函数要有**多个返回值，**可以按照以下方式书写代码

```python
def test_return():
    return 1, 2
x, y = test_return()
```

> 按照返回值的顺序，写对应顺序的多个变量接收即可
>
> 变量之间用逗号隔开
>
> 支持不同类型的数据 return



四、global关键字

**使用global关键字可以在函数内部声明变量为全局变量，如下面所示：**

```python
num = 100
def testA():
    print(num)

def testB():
    # global 关键字声明 a 是全局变量
    global num
    num = 200
    print(num)

testA()
testB()
print(num)

'''
100
200
200
'''
```

## Python数据容器

一、什么是数据容器

一种**可以容纳多份数据**的数据类型，容纳的每一份数据称之为1个元素，每一个元素，可以是**任意类型**的数据，如字符串、数字、布尔等等。

二、有哪些常用的数据容器

数据容器根据特点的不同，如：

+ 是否支持重复元素
+ 是否可以修改
+ 是否有序，等

分为5类，分别是：

列表(list)、元组(tuple)、字符串(str)、集合(set)、字典(dict)

### 数据容器：list(列表)

#### 列表基本知识

一、列表的定义

基本语法：

```python
# 字面量
[元素1, 元素2, 元素3, ....]

# 定义变量
变量名称 = [元素1, 元素2, 元素3, ....]

#定义空列表
变量名称 = []
变量名称 = list()
```

列表内的**每一个数据，称之为元素。**

+ 以[]作为标识
+ 列表内每一个元素之间用逗号隔开

**注意：列表可以一次存储多个数据，且可以为不同的数据类型，支持嵌套。**

二、列表使用

列表的每一个元素，都有编号称之为下标索引

列表可以从前向后从 0 开始，每次 +1, 按下标索引取出元素，也可以从后向前从**-1** 开始，每次-1

比如：

```python
my_list = ["tom", "rose", "lily"]
print(my_list[-1])
print(my_list[-2])
print(my_list[-3])
```

1. 列表的查询功能

   查找某元素的下标，如果找不到，报错valueError

   语法：

   ```python
   列表.index(元素)
   ```

   index 就是列表对象(变量)内置的方法(函数)

2. 列表的修改功能

   + 修改特定位置(索引)的元素值：

     语法：

     ```python
     列表[下标] = 值
     ```

     可以使用如上语法，直接对指定下标（正向、方向下标均可）的值进行：重新赋值或者修改

   + 插入元素：

     语法：

     ```python
     列表.insert(下标, 元素) # 在指定的下标位置，插入指定的元素
     ```

   + 追加元素

     语法：

     ```python
     列表.append(元素) # 将指定元素，追加到列表的尾部
     ```

     追加元素 2 语法：

     ```python
     列表.extend(其他数据容器) # 将其它数据容器的内容取出，依次追加到列表尾部
     ```

     列如：

     ```python
     mylist = [1, 2, 3]
     mylist.extend([4, 5, 6])
     print(mylist) # 输出结果为:[1, 2, 3, 4, 5, 6]
     ```

   + 删除元素

     语法：

     ```python
     del 列表[下标]
     列表.pop(下标)
     ```

     例如：

     ```python
     mylist = [1, 2, 3, 4, 5]
     del mylist[0]
     print(mylist)
     mylist.pop(0)
     print(mylist)
     '''
     输出结果为：
     [2, 3, 4, 5]
     [3, 4, 5]
     '''
     ```

     **注意：**del方法仅仅能够删除，而pop不仅能把元素删除，还能把删掉的元素作为返回值去得到

     删除某个元素在列表中的第一个匹配项

     语法：

     ```python
     列表.remove(元素)
     ```

   + 清空列表

     语法：

     ```python
     列表.clear()
     ```

   + 统计某元素在列表内的数量

     语法：

     ```python
     列表.count(元素)
     ```

   + 统计列表内有多少元素

     语法：

     ```python
     len(列表)
     ```

     可以得到一个 int 数字，表示列表内的元素数量

#### 列表的sort方法

使用方法：

```python
列表.sort(key=选择排序依据的函数, reverse=True|False)
```

+ 参数key，是要求传入一个函数，表示将列表的每一个元素都传入函数中，返回排序的依据
+ 参数reverse，是否反转排序结果，True表示降序，False表示升序

```python
# 对如下嵌套按照内层列表的第二个元素数字进行排序
my_list = [["a",  33], ["b", 22], ["c", 41]]
# 带名函数形式
def cmp(element):
    return element[1]
my_list.sort(key=cmp, reverse=True)
print(my_list)

# 匿名lambda 形式
my_list = [["a",  33], ["b", 22], ["c", 41], ["d", 12]]
my_list.sort(key=lambda element: element[1], reverse=True)
print(my_list)
```



### 数据容器：tuple(元组)

元组同列表一样，都是可以封装多个、不同类型的元素在内。

但最大的不同点在于：

> **元组一旦定义完成，就不可修改**
>
> 所以当我们需要在程序内封装数据，又不希望封装的数据被篡改，那么元组就非常合适了
>
> 但是可以修改元组内的list内容(修改元素、增加、删除、反转等)

元组定义：定义元组使用**小括号**，且使用**逗号**隔开各个数据，**数据可以是不同的数据类型**。

```python
# 定义元组字面量
(元素, 元素, ....., 元素)
# 定义元组变量
变量名称 = (元素, 元素, ....., 元素)
# 定义空元组
变量名称 = () # 方式1
变量名称 = tuple() # 方式2
```

**注意：元组只有一个数据的话，这个数据后面要添加逗号**

比如：

```python
t = ("hello", ) # 注意，必须带有逗号，否则不是元组类型
```



### 数据容器：str(字符串)

同元组一样，字符串是一个：**无法修改**的数据容器

字符串中常用的操作：

一、查找特定字符串的下标索引值

语法：

```python
字符串.index(字符串)
```

二、字符串的替换

语法：

```python
字符串.replace(字符串1, 字符串2)
```

功能：将字符串内的全部：字符串1，替换为字符串2

**注意**：不是修改字符串本身，而是得到一个新字符串

三、字符串的分割

语法：

```python
字符串.split(分隔字符串)
```

功能：按照指定的分隔字符串，将字符串划分为多个字符串，并存入列表对象中

**注意：**字符串本身不变，而是得到了一个列表对象

例如：

```python
mystr = "hello python world it"
mystr_list = mystr.split(" ")
print(mystr_list)
#输出结果为：['hello', 'python', 'world', 'it']
```

四、字符串规整操作

语法：

```python
字符串.strip() # 去前后空格
字符串.strip(字符串) # 去前后指定字符串
```

**注意：**

```python
mystr = "12hello world21"
print(mystr.strip("12"))
# 输出结果：hello world
```

这是因为传入的是"12"，其实就是："1" 和 "2" 都会移除，是按照单个字符

### 数据容器（序列）的切片

序列是指：内容连续、有序，可使用下标索引的一类数据容器

**列表、元组、字符串，均可以视为序列**

切片：从一个序列中，取出一个子序列

**语法：**序列[起始下标:结束下标:步长]

**表示从序列中，从指定位置开始，依次取出元素，到指定位置结束，得到一个新序列：**

+ 其实下标表示从何处开始，可以留空，留空视作从头开始
+ 结束下标（不含）表示从何处结束，可以留空，留空视作截取到结尾
+ 步长表示，依次取元素间隔
  + 步长1表示，一个个取元素
  + 步长2表示，每次跳过1个元素取
  + 步长N表示，每次跳过 N-1 个元素取
  + 步长为负数表示，反向取（注意，起始下标和结束下标也要反向标记）

### 数据容器：set(集合)

基本语法：

```python
# 定义集合字面量
{元素, 元素, ...., 元素}
# 定义集合变量
变量名称 = {元素, 元素, ...., 元素}
# 定义空集合
变量名称 = set()
```

集合是无序的，所以集合**不支持下标索引访问**

但是集合和列表一样，是允许修改的

一、添加新元素

语法：

```python
集合.add(元素) # 将指定元素添加到集合内
```

二、移除元素

语法：

```python
集合.remove(元素) # 将指定元素，从集合内移除
```

三、从集合中随机取出元素

语法：

```python
集合.pop() # 从集合中随机取出一个元素
```

同时集合本身被修改，元素被移除

四、清空集合

语法：

```python
集合.clear()
```

五、取出2个集合的差集

语法：

```python
集合1.difference(集合2) # 取出集合1和集合2的差集(集合1有而集合2没有的)
```

结果：得到一个新的集合，集合1和集合2不变

六、消除2个集合的差集

语法：

```python
集合1.difference_update(集合2) # 在集合1内，删除和集合2相同的元素
```

结果：集合1被修改，集合2不变

七、两个集合合并

语法：

```python
集合1.union(集合2) # 将集合1和集合2组合成新的集合
```

结果：得到新的集合，集合1和集合2不变

### 数据容器：dict(字典、映射)

字典的定义，同样**使用{}**，不过存储的**元素是一个个的：键值对**，如下语法：

```python
# 定义字典字面量
{key: value, key: value, ..., key:value}
# 定义字典变量
my_dict = {key: value, key: value, ..., key:value}
# 定义空字典
my_dic = {} # 空字典定义方式1
my_dic = dic() # 空字典定义方式2
```

定义嵌套字典可以按照如下方式：

```python
stu_score_dic = {
    "张三": {
        "语文": 77,
        "数学": 66,
        "英语": 78,
    },
    "李四": {
        "语文": 58,
        "数学": 86,
        "英语": 98,
    },
    "王五": {
        "语文": 88,
        "数学": 66,
        "英语": 78,
    }
}
```

字典的常用操作：

一、新增或者更新元素

语法：

```python
字典[Key] = Value # 字典被修改，新增了元素
```

二、删除元素

语法：

```python
字典.pop(Key) # 获得指定Key 的 Value，同时字典被修改，指定Key的数据被删除
```

三、清空元素

语法：

```python
字典.clear() # 字典被修改，元素被清空
```

四、获取全部的 Key

语法：

```python
字典.keys() # 结果：得到字典中的全部Key
```

五、defaultdict

`collections.defaultdict` 是 python 标准库中的一个字典子类。与普通字典不同的是，当访问一个不存在的键时，它会自动创建一个默认值。 这个默认值可以在创建 defaultdict 对象时通过参数指定，如果不指定，默认为 None。 例如：

```python
from collections import defaultdict
d = defaultdict(int)
print(d[1])  # 0
d[2] = 3
print(d[2])  # 3
```

这里的 defaultdict(int) 表示当访问不存在的键时，会自动创建一个值为 0 的键。

除此之外，我们可以将默认值设置为 list，也就是说，每当访问一个不存在的键时，会自动创建一个空列表作为默认值。这对于构建字典列表非常有用。例如，我们可以将一个列表添加到 defaultdict 中的一个键中，而不需要检查这个键是否存在。如果该键不存在，则会自动创建一个空列表。示例代码如下：

```python
from collections import defaultdict
dd = defaultdict(list)
dd['key1'].append(1)
dd['key1'].append(2)
dd['key2'].append(3)
print(dd)  # defaultdict(<class 'list'>, {'key1': [1, 2], 'key2': [3]})
```

在上面的例子中，我们首先创建了一个 defaultdict 对象 dd，然后向其中添加了一些键值对，其中键是字符串，值是整数。由于我们将默认值设置为列表，因此可以在添加值之前访问任何键，而不必担心 KeyError 异常。输出结果显示，dd 中包含 2 个键值对，其中 key1 对应的值是一个包含两个元素的列表，key2 对应的值是一个包含一个元素的列表。

### 容器的通用排序功能

语法：

当我们需要对列表、元组、字典等可迭代对象进行排序时，可以使用Python内置函数`sorted()`。`sorted()`可以接收一个可迭代对象作为参数，并返回一个排好序的新列表，不改变原来的对象。

```python
sorted(iterable, key=None, reverse=False)
```

参数说明：

1. iterable：表示可迭代对象，例如列表、元组、字典等。

2. key：表示用于排序的关键字。如果指定了该参数，那么将会以可迭代对象中的每个元素依次调用该关键字函数，返回一个排序依据的值。如果不指定该参数，则默认使用可迭代对象中的元素进行排序。

3. reverse：表示是否按照降序排序，默认为**False（升序）**。

示例代码：

```python
# 对列表进行排序
nums = [3, 1, 4, 2, 5]
sorted_nums = sorted(nums)
print(sorted_nums)  # [1, 2, 3, 4, 5]

# 对元组进行排序
t = (3, 1, 4, 2, 5)
sorted_t = sorted(t)
print(sorted_t)  # [1, 2, 3, 4, 5]

# 对字典进行排序
lst = {
    "张三": {
        "sex": "男",
        "age": 25
    },
    "李四": {
        "sex": "女",
        "age": 20
    },
    "王五": {
        "sex": "男",
        "age": 16
    }
}
sorted_lst = sorted(lst.items(), key=lambda x: x[1]['age'])
print(sorted_lst)
# 输出： [('王五', {'sex': '男', 'age': 16}), ('李四', {'sex': '女', 'age': 20}), ('张三', {'sex': '男', 'age': 25})]
```

在以上示例代码中，我们分别对列表、元组和字典进行了排序，并指定了关键字函数进行排序。通过使用`sorted()`函数，我们可以轻松地对可迭代对象进行排序，同时经过sorted函数排序过后得到的是一个列表对象。

> 在上述对字典的排序中，**之所以key=lambda x: x\[1]\['age']中第一个中括号里面要写1**，这是因为 `sorted` 函数的 `key` 参数指定了一个函数，该函数将应用于列表中的每个元素以获取用于排序的关键字。在这种情况下，`lst.items()` 返回的是一个包含键和值元组的列表，其中每个值是一个字典。
>
> 因此，当您使用 `key=lambda x: x[1]['age']` 时，它指定了一个 lambda 函数，该函数将返回列表中每个元素的第二个元素（即字典），然后使用该字典的 "age" 键的值作为该元素的排序关键字。因为第二个元素是字典，所以您需要在第一个中括号中使用数字 1 来获取它。

## Python的文件操作

1. 文件的读取

   + open() 打开函数

   在Python中，使用open函数可以打开一个已经存在的文件，或者创建一个新文件，语法如下：

   ```python
   open(name, mode, encoding)
   ```

   > name : 是要打开的目标文件名的字符串(可以包含文件所在的具体路径)。
   >
   > mode : 设置打开文件的模式(访问模式)：只读、写入、追加等
   >
   > encoding : 编码格式

   示例代码：

   ```python
   f = open('python.txt', 'r', encoding = "UTF-8")
   # encoding的顺序不是第三位，所以不能用位置参数，用关键字参数直接指定
   ```

   **注意：**此时`f`是`open`函数的文件对象

   mode常用的三种基础访问模式

   | 模式 |                             描述                             |
   | :--: | :----------------------------------------------------------: |
   |  r   |       以只读方式打开文件。文件的指针将会放在文件的开头       |
   |  w   | 打开一个文件只用于写入。如果该文件存在则打开文件，并从头开始编辑，**原有内容会被删除**，如果该文件**不存在，创建新文件** |
   |  a   | 打开一个文件用于追加。如果该文件已存在，**新的内容将会被写入到已有内容之后。**如果该文件**不存在，创建新文件**并进行写入 |

   + read()方法

   num表示要从文件中读取数据的长度(单位是字节)，如果没有传入num，那么就表示要读取文件中所有的数据

   + readlines()方法

   readlines可以按照行的方式把整个文件中的内容进行一次读取，并且返回的是一个列表，期中每一行的数据为一个元素。

   + for 循环读取文件行

   ```python
   for line in open("python.txt", "r"):
   	print(line)
   ```

   + with open 语法

   ```python
   with open("python.txt", "r") as f:
       f.readlines()
   # 通过with open的语句块中对文件进行操作
   # 可以在操作完成后自动关闭close文件，避免遗忘掉close方法
   ```


2. 文件的写入

   ```python
   f = open("测试.txt", "w")
   f.write("hello, world!")  # 文件写入
   f.flush() # 内容刷新
   # 或者使用 f.close()，这是因为close方法内置了flush功能
   ```

   **注意：**

   + 直接调用write，内容并未真正写入文件，而是会积攒在程序的内存中，称之为缓冲区
   + 当调用flush的时候，内容会真正写入文件
   + 这样做是避免频繁操作硬盘，导致效率下降

3. 文件的追加

   ```python
   f = open("测试.txt", 'a')
   f.write("hello, world!")  # 文件写入
   f.flush() # 内容刷新
   ```

   **注意：**

   + a 模式，文件不存在会创建文件
   + a 模式，文件存在会在最后追加写入文件

## Python异常、模块与包

### 异常、模块与包的使用方法



1. 捕获常规异常

   基本语法：

   ```python
   try:
       可能发生错误的代码
   except: # 等价于except Exception:
       如果出现异常执行的代码
   ```

2. 捕获指定异常

   基本语法：

   ```python
   try:
       可能发生错误的代码
   except NameError as e: # as的意思是给异常设置别名
       如果出现异常执行的代码
       
   # 捕获多个指定异常
   try:
       可能发生错误的代码
   except (NameError, ZeroDivisionError):
       如果出现异常执行的代码
   ```

   **注意：**

   > 如果尝试执行的代码异常类型和要捕获的异常类型不一致，则无法捕获异常
   >
   > 一般try下方只放一行尝试执行的代码

3. 异常else

   else 表示的是如果没有异常要执行的代码

   ```python
   try:
       print(1)
   except Exception as e:
       print(e)
   else:
       print("我是else,是没有异常的时候执行的操作")
   ```

4. 异常的finally

   finally表示的是无论是否出现异常都要执行的代码，例如关闭文件

   ```python
   try:
       f = open("test.txt", "r")
   except Exception as e:
       f = open("test.txt", "w")
   else:
       print("没有异常")
   finally:
       f.close()
   ```

5. Python 模块

   模块导入方法

   ```python
   [from 模块名] import [模块 | 类 | 变量 | 函数 | *] [as 别名]
   ```

   常用组合形式如下：

   + import 模块名
   + from 模块名 import 类、变量、方法等
   + from 模块名 import *
   + import 模块名 as 别名
   + from 模块名 import 功能名 as 别名

   \_\_main\_\_ 与  \_\_all__ 变量

   > `__main__` 和 `__all__` 都是 Python 中的特殊变量。
   >
   > `__main__` 变量在 Python 中表示当前执行的模块，也就是当前运行的 Python 脚本。当我们运行一个 Python 脚本时，Python 解释器会把该脚本当作一个模块来执行，并将其 `__name__` 属性设置为 `__main__`，以表示当前执行的是主程序。
   >
   > 例如，我们有一个名为 `example.py` 的 Python 文件，其中包含一些函数和变量。当我们直接运行该文件时，Python 解释器会将其视为主程序，并将 `__name__` 属性设置为 `__main__`。这样，我们可以在该文件中添加一些代码，以便在直接运行该文件时执行某些操作。
   >
   > `__all__` 变量用于定义一个模块中可以被导入的公共接口。当我们通过 `from module_name import *` 的方式导入一个模块时，Python 解释器会查找该模块的 `__all__` 属性，并将其中列出的所有公共接口导入到当前命名空间中。
   >
   > 例如，我们有一个名为 `example.py` 的 Python 文件，其中定义了一些函数和变量。如果我们只想将其中的一个函数导入到另一个文件中使用，可以在 `example.py` 文件中定义 `__all__` 变量，并将要导出的函数名称添加到这个变量中。这样，在另一个文件中导入 `example` 模块时，只有在 `__all__` 变量中列出的函数才会被导入到当前命名空间中。
   >
   > 也就是说若一个模块文件中有'\_\_all\_\_'变量，当使用'from xxx import *'导入时，只能导入这个列表中的元素

6. Python 包

   从物理上看，包就是一个文件夹，在该文件夹下包含了一个\_\_init\_\_.py文件，该文件夹可用于多个模块文件

   从逻辑上看，包的本质依然是模块

   包的作用：

   > 当我们的模块文件越来越多时，包可以帮助我们管理这些模块，包的作用就是包含多个模块，但包的本质依然是模块

   导入包：

   ```python
   import 包名.模块名 # 方式一
   from 包名 import 模块名
   ```

### 安装第三方包

第三方包的安装非常简单，我们只需要使用Python内置的pip程序即可

打开命令提示符程序，在里面输入：

```python
pip install 包名称
```

即可通过网络安装包

但是由于pip是链接的国外的网站进行包的下载，所以有时候回速度很慢。因此我们可以通过如下命令，让其连接国内的网站进行包的安装：

```python
pip install -i https://pypi.tuna.tsinghua.edu.cn/simple 包名称
```

![pip快速安装第三方包](D:\Typora\photos\pip快速安装第三方包.jpg)

在pycharm中安装第三方包如下所示：

![pycharm导入第三方包第一步](D:\Typora\photos\pycharm导入第三方包第一步.jpg)

![pycharm导入第三方包](D:\Typora\photos\pycharm导入第三方包-1683799875602-5.jpg)

## 数据可视化

### json数据格式

json是一种轻量级的数据交互格式，可以按照json指定的格式去组织和封装数据。json本质上是一个带有特定格式的字符串。

+ python 数据和 json 数据格式的相互转化

  ```python
  # 导入json模块
  import json
  # 准备符合json格式要求的python数据
  data = [{"name":"老王","age":16}, {"name":"张三", "age":20}]
  # 通过json.dumps(data) 方法把python数据转化为 json数据
  data = json.dumps(data, ensure_ascii=False) # ensure_ascii=False 参数来确保中文正常转换
  # 通过json.loads(data)方法把json数据转化为python数据
  data = json.loads(data)
  ```

  > json无非就是一个单独的字典或内部元素都是字典的列表，所以json可以直接和python的字典或列表进行无缝转换

### pyecharts模块

[点击进入pyecharts官网](https://pyecharts.org/#/)

pyecharts效果查看官网：https://gallery.pyecharts.org/#/

安装pyecharts第三方包

![pyecharts](D:\Typora\photos\pyecharts.jpg)

基础折线图

```python
import pyecharts.charts
# 得到折线图对象
line = pyecharts.charts.Line()
# 添加 x 轴数据
line.add_xaxis(["中国", "美国", "英国"])
# 添加 y 轴数据
line.add_yaxis("GDP", [30, 20, 10])
# 生成图表
line.render()
```

写完后右键运行，然后便生成了一个render.html文件，打开便可以看到运行结果，如下所示：

![F8W@VTQCNYDLIXY3V[CCT]X](D:\Typora\photos\F8W@VTQCNYDLIXY3V[CCT]X.jpg)

set_global_opts方法：全局配置

```python
import pyecharts.charts
from pyecharts.options import TitleOpts, LegendOpts, ToolboxOpts, VisualMapOpts
# 得到折线图对象
line = pyecharts.charts.Line()
# 添加 x 轴数据
line.add_xaxis(["中国", "美国", "英国"])
# 添加 y 轴数据
line.add_yaxis("GDP", [30, 20, 10])

# 设置全局配置项
line.set_global_opts(
    title_opts=TitleOpts(title="GDP展示", pos_left="center", pos_bottom="1%"),
    legend_opts=LegendOpts(is_show=True),
    toolbox_opts=ToolboxOpts(is_show=True),
    visualmap_opts=VisualMapOpts(is_show=True),
)

# 生成图表
line.render()
```

运行结果：

![$RF~~A%VYFRS~YRVV~HKSGG](D:\Typora\photos\$RFA%VYFRSYRVVHKSGG.png)

### 数据处理

[可视化实战数据传送门](https://github.com/shixiaoliuya/Python_study/tree/master/python_study/%E5%8F%AF%E8%A7%86%E5%8C%96%E6%95%99%E7%A8%8B%E5%AD%A6%E4%B9%A0/%E5%8F%AF%E8%A7%86%E5%8C%96%E6%A1%88%E4%BE%8B%E6%95%B0%E6%8D%AE)

#### 实战--生成折线图

```python
"""
可视化需求：折线图开发
"""
import json
from pyecharts.charts import Line
from pyecharts.options import TitleOpts, LabelOpts

# 处理数据
f_us = open("D:/py_works/python_study/可视化案例数据/折线图数据/美国.txt", "r", encoding="UTF-8")
us_data = f_us.read() # 美国的全部数据

f_jp = open("D:/py_works/python_study/可视化案例数据/折线图数据/日本.txt", "r", encoding="UTF-8")
jp_data = f_jp.read() # 日本的全部数据

f_in = open("D:/py_works/python_study/可视化案例数据/折线图数据/印度.txt", "r", encoding="UTF-8")
in_data = f_in.read() # 印度的全部数据
# 去掉不合json规范的开头
us_data = us_data.replace("jsonp_1629344292311_69436(", "")
jp_data = jp_data.replace("jsonp_1629350871167_29498(", "")
in_data = in_data.replace("jsonp_1629350745930_63180(", "")

# 去掉不合json规范的结尾
us_data = us_data[:-2]
jp_data = jp_data[:-2]
in_data = in_data[:-2]

# JSON 转 python字典
us_dict = json.loads(us_data)
jp_dict = json.loads(jp_data)
in_dict = json.loads(in_data)

# 获取 trend key
us_trend_data = us_dict['data'][0]['trend']
jp_trend_data = jp_dict['data'][0]['trend']
in_trend_data = in_dict['data'][0]['trend']

# 获取日期数据，用于 x 轴， 取2020年（到314下标结束）
us_x_data = us_trend_data['updateDate'][:314]
jp_x_data = jp_trend_data['updateDate'][:314]
in_x_data = in_trend_data['updateDate'][:314]

# 获取确诊数据，用于 y 轴，取2020年（到314下标结束）
us_y_data = us_trend_data['list'][0]['data'][:314]
jp_y_data = jp_trend_data['list'][0]['data'][:314]
in_y_data = in_trend_data['list'][0]['data'][:314]

#生成图表
line = Line() # 构建折线图对象
# 添加 x 轴数据
line.add_xaxis(us_x_data) # x 轴是公用的，所以使用一个国家的数据即可
# 添加 y 轴数据
line.add_yaxis("美国确诊人数", us_y_data, label_opts=LabelOpts(is_show=False)) # 添加美国的y轴数据
line.add_yaxis("日本确诊人数", jp_y_data, label_opts=LabelOpts(is_show=False)) # 添加日本的y轴数据
line.add_yaxis("印度确诊人数", in_y_data, label_opts=LabelOpts(is_show=False)) # 添加印度的y轴数据

#设置全局选项
line.set_global_opts(
    # 标题设置
    title_opts=TitleOpts(title="2020年美日印三国确诊人数对比折线图", pos_left="center", pos_bottom="1%"),
)

# 调用render方法，生成图表
line.render()
# 关闭文件对象
f_us.close()
f_jp.close()
f_in.close()
```

运行结果：

![image-20230512182511249](D:\Typora\photos\image-20230512182511249.png)

#### 实战--地图可视化

```python
"""
演示全国疫情可视化地图开发
"""
import json
from pyecharts.charts import Map
from pyecharts.options import *

# 读取数据文件
f = open("可视化案例数据/地图数据/疫情.txt", "r", encoding="UTF-8")
data = f.read() # 全部数据
# 关闭文件
f.close()
# 取到各省数据

# 组装每个省份和确诊人数为元组，并各个省的数据都封装入列表内
data_dict = json.loads(data) # 基础数据字典
# 从字典中取到省份的数据列表
province_data_list = data_dict["areaTree"][0]["children"]
# 组装每个省份和确诊人数为元组，并为各个省的数据否封装入列表内
data_list = []    # 绘图所需要的用到的数据列表
city = ["北京", "天津", "上海", "重庆"]
for province_data in province_data_list:
    if province_data["name"] == "宁夏":
        province_name = "宁夏回族自治区"
    elif province_data["name"] == "新疆":
        province_name = "新疆维吾尔自治区"
    elif province_data["name"] == "内蒙古":
        province_name = "内蒙古自治区"
    elif province_data["name"] == "西藏":
        province_name = "西藏自治区"
    elif province_data["name"] == "广西":
        province_name = "广西壮族自治区"
    elif province_data["name"] in city:
        province_name = province_data["name"] + "市"
    else:
        province_name = province_data["name"] + "省"
    province_confirm = province_data["total"]["confirm"]
    data_list.append((province_name, province_confirm))

# print(data_list)
# 创建地图对象
map = Map()
# 添加数据
map.add("各省份确诊人数", data_list, "china")
# 设置全局配置，定制分段的视觉映射
map.set_global_opts(
    title_opts=TitleOpts(title="全国疫情地图"),
    visualmap_opts=VisualMapOpts(
        is_show=True, # 是否显示
        is_piecewise=True, # 是否分段
        pieces=[
            {"min": 1, "max": 99, "label": "1-99人", "color": "#CCFFFF"},
            {"min": 100, "max": 999, "label": "1-99人", "color": "#FFFF99"},
            {"min": 1000, "max": 9999, "label": "100-999人", "color": "#FF9966"},
            {"min": 10000, "max": 99999, "label": "1000-9999人", "color": "#FF6666"},
            {"min": 100000, "max": 99999, "label": "10000-9999人", "color": "#CC3333"},
            {"min": 1000000, "label": "1000000+", "color": "#990033"},
        ]
    )
)
# 绘图
map.render("全国疫情地图.html")
```

![image-20230512194303540](D:\Typora\photos\image-20230512194303540.png)

```python
"""
河南省疫情可视化
"""
import json

from pyecharts.charts import Map
from pyecharts.options import *

f = open("可视化案例数据/地图数据/疫情.txt", "r", encoding="UTF-8")
data = f.read() # 全部数据
f.close()
data_dict = json.loads(data)
cities_data = data_dict["areaTree"][0]["children"][3]["children"]
data_list = []
for city_data in cities_data:
    city_name = city_data["name"] + "市"
    city_confirm = city_data["total"]["confirm"]
    data_list.append((city_name, city_confirm))
print(data_list)
map = Map()
map.add("河南省疫情分布", data_list, "河南")
map.set_global_opts(
    title_opts=TitleOpts(title="河南省疫情地图"),
    visualmap_opts=VisualMapOpts(
        is_show=True, # 是否显示
        is_piecewise=True, # 是否分段
        pieces=[
            {"min": 1, "max": 99, "label": "1-99人", "color": "#CCFFFF"},
            {"min": 100, "max": 999, "label": "1-99人", "color": "#FFFF99"},
            {"min": 1000, "max": 9999, "label": "100-999人", "color": "#FF9966"},
            {"min": 10000, "max": 99999, "label": "1000-9999人", "color": "#FF6666"},
            {"min": 100000, "max": 99999, "label": "10000-9999人", "color": "#CC3333"},
            {"min": 1000000, "label": "1000000+", "color": "#990033"},
        ]
    )
)
map.render("河南省疫情分布.html")
```

![image-20230512195534535](D:\Typora\photos\image-20230512195534535.png)

#### 实战--动态柱状图

构建基础时间线柱状图

```python
"""
带有时间线的柱状图开发
"""
from pyecharts.charts import Bar, Timeline
from pyecharts.options import LabelOpts
from pyecharts.globals import ThemeType
# 使用Bar构建基础柱状图
bar1 = Bar()
bar1.add_xaxis(["中国", "美国", "英国"])
bar1.add_yaxis("GDP", [30, 20, 10], label_opts=LabelOpts(position="right"))
bar1.reversal_axis()

bar2 = Bar()
bar2.add_xaxis(["中国", "美国", "英国"])
bar2.add_yaxis("GDP", [50, 50, 40], label_opts=LabelOpts(position="right"))
bar2.reversal_axis()

bar3 = Bar()
bar3.add_xaxis(["中国", "美国", "英国"])
bar3.add_yaxis("GDP", [70, 60, 60], label_opts=LabelOpts(position="right"))
bar3.reversal_axis()

# 构建时间线对象
timeline = Timeline({"theme": ThemeType.LIGHT})
# 在时间线内添加柱状图对象
timeline.add(bar1, "点1")
timeline.add(bar2, "点2")
timeline.add(bar3, "点3")

# 自动播放设置
timeline.add_schema(
    play_interval=1000, # 自动播放时间间隙，单位毫秒
    is_timeline_show=True, # 是否在自动播放的时候显示时间段
    is_auto_play=True, # 是否自动播放
    is_loop_play=True # 是否循环自动播放
)

# 绘图是用时间线对象绘图，而不是bar对象了
timeline.render("基础时间线柱状图.html")
```

1960-2019全球前8GDP国家动态时间线柱状图：

```python
'''
需求：
1. GDP 数据处理为亿级
2. 有时间轴，按照年份为时间轴的点
3. x轴和y轴反转，同时每一年的数据只要前8名的国家
4. 有标题，标题的年份会动态更改
5. 设置主题为LIGHT
'''
from pyecharts.charts import Bar, Timeline
from pyecharts.options import *
from pyecharts.globals import ThemeType
# 读取数据
f = open("可视化案例数据/动态柱状图数据/1960-2019全球GDP数据.csv", "r", encoding="GB2312")
data_lines = f.readlines()
f.close()
# 删除第一条数据
data_lines.pop(0)
# 将数据转化为字典存储
# {年份:[[国家, GDP],...], 年份:[[国家, GDP],...]....}
data_dict = {}
for line in data_lines:
    year = int(line.split(",")[0]) # 年份
    coountry = line.split(",")[1] # 国家
    gdp = float(line.split(",")[2]) # GDP 数据
    try:
        data_dict[year].append([coountry, gdp])
    except KeyError:
        data_dict[year] = [[coountry, gdp]]
# print(data_dict)
# 创建时间线对象
timeline = Timeline({"theme": ThemeType.LIGHT})
# 排序年份
sorted_year_list = sorted(data_dict.keys())
'''
for 循环每一年的数据，基于每一年的数据创建每一年的bar对象
在 for 中，将每一年的bar对象添加到时间线中
'''
for year in sorted_year_list:
    data_dict[year].sort(key=lambda element:element[1], reverse=True)
    # 取出本年份前8名的国家
    year_data = data_dict[year][0:8]
    x_data, y_data = [], []
    for country_gdp in year_data:
        x_data.append(country_gdp[0]) # x 轴添加国家
        y_data.append(country_gdp[1] / 100000000) # y 轴添加gdp
    # 构建柱状图
    bar = Bar()
    x_data.reverse()
    y_data.reverse()
    bar.add_xaxis(x_data)
    bar.add_yaxis("GDP(亿)", y_data, label_opts=LabelOpts(position="right"))
    # 反转 x，y 轴
    bar.reversal_axis()
    # 设置每一年的图表的标题
    bar.set_global_opts(
        title_opts=TitleOpts(title=f"{year}年全球前8GDP国家数据")
    )
    timeline.add(bar, str(year))


# 设置时间线自动播放
timeline.add_schema(
    play_interval=1000,
    is_timeline_show=True,
    is_auto_play=True,
    is_loop_play=True
)
timeline.render("1960-2019全球GDP国家.html")
```

![image-20230514165847377](D:\Typora\photos\image-20230514165847377.png)

## 面向对象

### 成员方法

类的定义和使用

类的使用语法：

```python
class 类名称:
    类的属性
    
    类的方法
```

+ class 是关键字，表示要定义类了
+ 类的属性，即定义在类中的变量（成员变量）
+ 类的行为，即定义在类中的函数（成员方法）

创建类对象的语法：

```python
对象 = 类名称()
```

在类中定义成员方法和定义函数基本一致，但任有细微区别：

```python
def 方法名(self, 形参1, ... , 形参N):
    方法体
```

> **self关键字**是成员方法定义的时候，**必须填写**的。
>
> + 它用来表示类对象自身的意思
> + 当我们使用类对象调用方法的时候，self 会自动被python传入
> + **在方法内部，想要访问类的成员变量，必须使用 self**

### 构造方法

在python中，`__init()__`方法，称之为构造方法。

可以实现：

+ 在创建类对象(构造类)的时候，**会自动执行**
+ 在创建类对象(构造类)的时候，**将传入参数自动传递给`__init()__`方法使用**

```python
class student:
    name = None
    age = None
    tel = None
    # 上面三行可以省略不写
    def __init__(self, name, age, tel):
        self.name = name
        self.age = age
        self.tel = tel
        print("Student类创建了一个对象")

stu = student("Jhon", 31, "238923312")
```

### 其他常用内置方法

1. `__str__`字符串方法

   ```python
   class Student:
       def __init__(self, name, age):
           self.name = name
           self.age = age
   student = Student("Jhon", 12)
   print(student) # 结果： <__main__.Student object at 0x000001CF39F9B0D0>
   print(str(student)) # 结果：<__main__.Student object at 0x000001CF39F9B0D0>
   ```

   当对象需要被转换为字符串之时，会输出如上结果(内存地址)

   但是内存地址用处并不大，我们可以通过`__str__`方法，控制类转换为字符串的行为

   ```python
   class Student:
       def __init__(self, name, age):
           self.name = name
           self.age = age
       def __str__(self):
           return f"Student类对象，name={self.name},age={self.age}"
   student = Student("Jhon", 12)
   print(student) # 结果： Student类对象，name=Jhon,age=12
   print(str(student)) # 结果：Student类对象，name=Jhon,age=12
   
   ```

2. `__lt__`小于符号比较

   直接对两个对象进行比较是不可以的，但是在类中实现`__lt__`方法，即可同时完成：小于符号和大于符号2种比较

   ```python
   class Student:
       def __init__(self, name, age):
           self.name = name
           self.age = age
       def __lt__(self, other):
           return self.age < other.age
   
   student1 = Student("Jhon", 12)
   student2 = Student("Tom", 13)
   print(student1 < student2) # 结果：True
   print(student1 > student2) # 结果：False
   ```

3. `__le__`小于等于比较符号方法

   `__le__` 可以用于： <= 和 >= 两种比较运算符

   ```python
   class Student:
       def __init__(self, name, age):
           self.name = name
           self.age = age
       def __le__(self, other):
           return self.age <= other.age
   
   student1 = Student("Jhon", 12)
   student2 = Student("Tom", 13)
   print(student1 <= student2) # 结果：True
   print(student1 >= student2) # 结果：False
   ```

4. `__eq__`比较运算符实现方法

   ```python
   class Student:
       def __init__(self, name, age):
           self.name = name
           self.age = age
       def __eq__(self, other):
           return self.age == other.age
   
   student1 = Student("Jhon", 12)
   student2 = Student("Tom", 12)
   print(student1 == student2) # 结果：True
   ```

   + 不实现`__eq__`方法，对象之间可以比较，但是比较内存地址，也就是：不同对象 == 比较一定是False结果。
   + 实现了`__eq__`方法，就可以按照自己的想法来决定两个对象是否相等了

### 封装

类中提供了私有成员的形式来支持**私有成员变量**和**私有成员方法**

定义私有成员的方式非常简单，只需要：

+ 私有成员变量：变量名以__开头（2个下划线）
+ 私有成员方法：方法名以__开头（2个下划线）

即可完成私有成员的设置

```python
# 定义一个类，内含私有成员变量和私有成员方法
class Phone:

    __current_voltage = 0.5 # 当前手机运行电压
    def __keep_single_core(self):
        print("让CPU以单核模式运行")
    def call_by_5G(self):
        if self.__current_voltage >= 1:
            print("5G通话已开启")
        else:
            self.__keep_single_core()
            print("电量不足，无法使用5G，已设置为单核运行进行省电")
phone = Phone()
phone.call_by_5G()
```

> 类对象无法访问私有成员
>
> 类中的其他成员可以访问私有成员

### 继承

基本语法：

```python
class 类名(父类1, 父类2, ...., 父类N):
    类内容体
```

**多继承注意事项：**

多个父类中，如果有同名的成员，那么**默认**以继承顺序(从左到右)为优先级。

即：先继承的保留，后继承的覆盖

**调用父类同名成员：**

一旦复写父类成员，那么类对象调用成员的时候，就会调用复写后的新成员

如果需要使用被复写的父类成员，需要特殊的调用方式

+ 调用父类成员

  使用成员变量：**父类名.成员变量**

  使用成员方法：**父类名.成员方法(self)**

+ 使用super()调用父类成员

  使用成员变量：**super().成员变量**

  使用成员方法：**super().成员方法()**

### 类型注解

在代码中设计数据交互的地方，提供数据类型的注解(显式的说明)

**一般，无法直接看出变量类型只是会添加变量的类型注解**

主要功能：

+ 帮助第三方IDE工具(如pycharm)对代码进行类型的推断，协助做代码提示
+ 帮助开发者自身对变量进行类型注释

一、变量类型注解：

基础语法

```python
变量: 类型
```

除此之外，还可以在**注释中**进行类型注解

```python
# type: 类型
```

```python
import json
import random

# 基础数据类型注解
var_1: int = 10
var_2: str = "hello"
var_3: bool = True
# 类对象类型注解
class Student:
    pass
stu: Student = Student()
# 基础容器类型注解
my_list: list = [1, 2, 3]
my_tuple: tuple = (1, 2, 3)
my_set: set = {1, 2, 3}
my_str: str = "hello"
my_dict: dict = {"hello": 111}
# 容器类型详细注解
my_list: list[int] = [1, 2, 3]
my_tuple: tuple[str, int, bool] = ("hello", 123, True)
my_set: set[int] = {1, 2, 3}
my_dict: dict[str, int] = {"hello": 111}
# 在注释中进行类型注解
var1 = random.random() # type: int
var2 = json.loads('{"name":"zhangsan"}') # type: dict{str,str}
def func():
    return 10
var3 = func() # type: int
```

**注意：**

+ 元组类型设置类型详细注解，需要将每一个元素都标记出来
+ 字典类型设置类型详细注解，需要2个类型，第一个是key，第二个是value

二、函数和方法的形参类型注解语法：

```python
def 函数方法名(形参名: 类型, 形参名: 类型,....):
    pass
```

同时，函数（方法）的返回值也是可以添加类型注解的。

```python
def 函数方法名(形参名: 类型, 形参名: 类型,....) -> 返回值类型:
    pass
```

三、Union类型

```python
from typing import Union
my_list: list[Union[str, int]] = [1, 2, "hello", "world"]
my_dict: dict[str, Union[str, int]] = {"name": "zhangsan", "age": 31}
```

## Python 操作MySQL基础使用

在python中，使用第三方库：`pymysql`来完成对MySQL数据库的操作

安装

```python
pip install pymysql
```

![image-20230518185244582](D:\Typora\photos\image-20230518185244582.png)

```python
from pymysql import Connection
# 构建到MySQL数据库的链接
conn = Connection(
    host="localhost", # 主机名（IP）、
    port=3306, # 端口
    user="root", # 账户
    password="root"
)
# print(conn.get_server_info())

# 执行非查询性质SQL
cur = conn.cursor() # 获取到游标对象
conn.select_db("test") # 选择数据库
# cur.execute("create table test_pymysql(id int);") # 执行sql

# 执行查询性质SQL
cur.execute("select * from student")
results:tuple = cur.fetchall()
# 关闭链接
conn.close()
```

pymysql在执行**数据插入**或其它产生数据更改的SQL语句时，默认是需要提交更改的，即需要通过代码“确认”这种更改行为。

```python
from pymysql import Connection
# 构建到MySQL数据库的链接
conn = Connection(
    host="localhost", # 主机名（IP）、
    port=3306, # 端口
    user="root", # 账户
    password="root"
)
cur = conn.cursor() # 获取到游标对象
conn.select_db("test") # 选择数据库
cur.execute("insert into student values(1001, 'jhon', 31, '男')")
# 通过commit确认
conn.commit()
# 关闭链接
conn.close()
```

如果不想手动commit确认，可以在构建链接对象的时候，设置自动commit的属性。

```python
conn = Connection(
    host="localhost", # 主机名（IP）、
    port=3306, # 端口
    user="root", # 账户
    password="root",
    autocommit=True # 设置自动提交
)
```

## PySpark 学习

### PySpark 基础

PySpark是由Spark官方开发的Python语言第三方库。

安装PySpark库

```python
pip install -i https://pypi.tuna.tsinghua.edu.cn/simple pyspark
```

安装完包之后想要使用PySpark库完成数据处理，首先需要构建一个执行环境入口对象。

PySpark的执行环境入口对象是：类 SparkContext 的类对象

```python
# 导包
from pyspark import SparkConf, SparkContext
# 创建SparkConf对象
Conf = SparkConf().setMaster("local[*]").setAppName("test_spark_app")
# 基于SparkConf类对象创建SparkContext对象
sc = SparkContext(conf=Conf)
# 打印PySpark的运行版本
print(sc.version)
# 停止SparkContext对象的运行（停止PySpark程序）
sc.stop()
```

PySpark的编程，主要分为三个步骤：

> **第一步**：通过SparkContext类对象的成员方法完成数据的读取操作，读取后得到RDD类对象
>
> **第二步**：通过RDD类对象的成员方法，完成各种数据结算的要求
>
> **第三步**：将处理完成后的RDD对象调用各种成员方法完成写出文件、转化为list等操作

### Spark的数据输入

**RDD对象**

PySpark支持多种数据的输入，在输入完成后，都会得到一个：RDD类的对象

RDD全称为：弹性分布式数据集

PySpark针对数据的处理，都是以RDD对象作为载体，即：

+ 数据存储在RDD内
+ 各类数据的计算方法，也都是RDD的成员方法
+ RDD的数据计算方法，返回值依旧是RDD对象

**Python数据容器转RDD对象**

PySpark支持通过SparkContext对象的parallelize成员方法，将list等各种数据容器转换为PySpark的RDD对象

```python
from pyspark import SparkConf, SparkContext

Conf = SparkConf().setMaster("local[*]").setAppName("test_spark_app")
sc = SparkContext(conf=Conf)
rdd = sc.parallelize(数据容器对象)
# 输出RDD的内容
print(rdd.collect()) # collect算子用于将RDD各个分区内的数据，统一收集到Driver中，形成一个List对象
```

**注意：**

+ 字符串会被拆分出一个个的字符，存入RDD对象
+ 字典仅有key会被存入RDD对象

PySpark也支持通过SparkContext入口对象，来读取文件，来构建出RDD对象

```python
from pyspark import SparkConf, SparkContext

Conf = SparkConf().setMaster("local[*]").setAppName("test_spark_app")
sc = SparkContext(conf=Conf)
rdd = sc.textFile(文件路径)
# 输出RDD的内容
print(rdd.collect())
```

### 数据计算

**一、map方法**

map算子，是将RDD的数据一条条处理(处理的逻辑 基于map算子中接收的处理函数)，返回新的RDD

例如：

```python
from pyspark import SparkConf, SparkContext
import os
os.environ['PYSPARK_PYTHON'] = "D:/py3.10.11/python.exe"

Conf = SparkConf().setMaster("local[*]").setAppName("test_spark")
sc = SparkContext(conf=Conf)

rdd = sc.parallelize([1, 2, 3, 4, 5])
# 通过map方法将全部数据都乘以10
def func(data):
    return data * 10

rdd = rdd.map(func)
print(rdd.collect())
```

**二、flatMap方法**

对rdd执行map操作，然后进行**解除嵌套**操作

示例代码：

```python
from pyspark import SparkConf, SparkContext
import os
os.environ['PYSPARK_PYTHON'] = "D:/py3.10.11/python.exe"

Conf = SparkConf().setMaster("local[*]").setAppName("test_spark")
sc = SparkContext(conf=Conf)

rdd = sc.parallelize(["hello test", "world learn", "python study"])
# 将rdd数据里面的一个个单词提取出来
rdd = rdd.flatMap(lambda x: x.split(" "))
print(rdd.collect())
# 输出：['hello', 'test', 'world', 'learn', 'python', 'study']
```

**三、reduceByKey方法**

针对**KV型**RDD，自动按照key分组，然后根据提供的聚合逻辑，完成**组内数据(value)**的聚合操作

ps：所谓KV型就是二元元组

示例代码：

```python
from pyspark import SparkConf, SparkContext
import os
os.environ['PYSPARK_PYTHON'] = "D:/py3.10.11/python.exe"

Conf = SparkConf().setMaster("local[*]").setAppName("test_spark")
sc = SparkContext(conf=Conf)

rdd = sc.parallelize([('男', 99), ('男', 76), ('男', 67), ('女', 88), ('女', 73)])
# 求男生和女生两个组的成绩之和
rdd = rdd.reduceByKey(lambda a, b: a + b)
print(rdd.collect())
```

**四、filter方法**

过滤想要的数据进行保留

示例代码：

```python
from pyspark import SparkConf, SparkContext
import os
os.environ['PYSPARK_PYTHON'] = "D:/py3.10.11/python.exe"

Conf = SparkConf().setMaster("local[*]").setAppName("test_spark")
sc = SparkContext(conf=Conf)

rdd = sc.parallelize([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
rdd = rdd.filter(lambda num: num % 2 == 0)
print(rdd.collect())
# 输出：[2, 4, 6, 8, 10]
```

**五、distinct方法**

对RDD数据进行去重，返回新RDD

示例代码：

```python
from pyspark import SparkConf, SparkContext
import os
os.environ['PYSPARK_PYTHON'] = "D:/py3.10.11/python.exe"

Conf = SparkConf().setMaster("local[*]").setAppName("test_spark")
sc = SparkContext(conf=Conf)

rdd = sc.parallelize([1,1,1,2,3,4,5,6,3,2,3,4,2,2,5,4,6])
rdd = rdd.distinct()
print(rdd.collect())
# 输出： [1, 2, 3, 4, 5, 6]
```

**六、sortBy方法**

对RDD数据进行排序，基于指定的排序依据

示例代码：

```python
from pyspark import SparkConf, SparkContext
import os
os.environ['PYSPARK_PYTHON'] = "D:/py3.10.11/python.exe"
Conf = SparkConf().setMaster("local[*]").setAppName("test_spark")
sc = SparkContext(conf=Conf)
# 读取数据文件
rdd = sc.textFile("test.txt")
# 取出全部单词
word_rdd = rdd.flatMap(lambda x: x.split(" "))
# print(word_rdd.collect())
# 将所有单词都转换成二元元组，单词为key，value设置为1
word_with_one_rdd = word_rdd.map(lambda word: (word, 1))
# 分组并求和
result_rdd = word_with_one_rdd.reduceByKey(lambda a, b: a + b)
# 对结果进行排序
finally_rdd = result_rdd.sortBy(lambda x: x[1], ascending=False, numPartitions=1)
print(finally_rdd.collect())
```

其中：

- `lambda x: x[1]`：表示排序的关键字，即按照元素中的第二个值进行排序。
- `ascending=False`：表示按降序排列，默认为升序排列。
- `numPartitions=1`：表示将排序后的结果存储到一个分区中，即将所有数据都放在一个分区中，这样可以加快排序的速度，但是可能会导致数据倾斜的问题。

### 数据输出

1. 输出为python对象

   使用collect算子输出

   常用算子

   **一、reduce方法**

   对RDD数据集按照传入的逻辑进行聚合

   演示代码：

   ```python
   from pyspark import SparkConf, SparkContext
   import os
   os.environ['PYSPARK_PYTHON'] = "D:/py3.10.11/python.exe"
   Conf = SparkConf().setMaster("local[*]").setAppName("test_spark")
   sc = SparkContext(conf=Conf)
   
   rdd = sc.parallelize([1, 2, 3, 4, 5])
   num = rdd.reduce(lambda a, b: a + b)
   print(num)
   ```

   **二、take方法**

   将RDD的前N个元素，组合成list返回给你

   演示代码：

   ```python
   from pyspark import SparkConf, SparkContext
   import os
   os.environ['PYSPARK_PYTHON'] = "D:/py3.10.11/python.exe"
   Conf = SparkConf().setMaster("local[*]").setAppName("test_spark")
   sc = SparkContext(conf=Conf)
   
   rdd = sc.parallelize([1, 2, 3, 4, 5, 7, 6, 7, 9])
   take_list = rdd.take(5)
   print(take_list)
   # 输出：[1, 2, 3, 4, 5]
   ```

   **三、count算子**

   计算RDD有多少条数据，返回值是一个数字

   演示代码：

   ```python
   from pyspark import SparkConf, SparkContext
   import os
   os.environ['PYSPARK_PYTHON'] = "D:/py3.10.11/python.exe"
   Conf = SparkConf().setMaster("local[*]").setAppName("test_spark")
   sc = SparkContext(conf=Conf)
   
   rdd = sc.parallelize([1, 2, 3, 4, 5, 7, 6, 7, 9])
   number_count = rdd.count()
   print(number_count)
   # 输出：9
   ```

2. 输出到文件中

   **配置hadoop依赖**

   + 调用保存文件的算子，需要配置Hadoop依赖下载Hadoop安装包

     http://archive.apache.org/dist/hadoop/common/hadoop-3.0.0/hadoop-3.0.0.tar.gz

   + 解压到电脑任意位置在Python代码中使用os模块配置：os.environ[‘HADOOP_HOME’] = ‘HADOOP解压文件夹路径’下载winutils.exe，并放入Hadoop解压文件夹的bin目录内

     https://raw.githubusercontent.com/steveloughran/winutils/master/hadoop-3.0.0/bin/winutils.exe

   + 下载hadoop.dll，并放入:C:/Windows/System32 文件夹内

     https://raw.githubusercontent.com/steveloughran/winutils/master/hadoop-3.0.0/bin/hadoop.dll

   **一、saveAsTextFile算子**

   将RDD的数据写入文本文件中

   ```python
   from pyspark import SparkConf, SparkContext
   import os
   os.environ['PYSPARK_PYTHON'] = "D:/py3.10.11/python.exe"
   os.environ['HADOOP_HOME'] = "D:/software/hadoop/hadoop-3.0.0"
   Conf = SparkConf().setMaster("local[*]").setAppName("test_spark")
   Conf.set("spark.default.parallelism", "1") # 修改rdd分区为1个
   
   sc = SparkContext(conf=Conf)
   
   rdd1 = sc.parallelize([1, 2, 3, 4, 5])
   # rdd1 = sc.parallelize([1, 2, 3, 4, 5], numSlices = 1) # 修改rdd分区为1个
   rdd2 = sc.parallelize([("hello", 3), ("Spark", 5), ("Hi", 7)])
   # rdd2 = sc.parallelize([("hello", 3), ("Spark", 5), ("Hi", 7)], numSlices = 1) # 修改rdd分区为1个
   rdd3 = sc.parallelize([[1, 2, 3], [6, 7, 8], [11, 23, 32]])
   # rdd3 = sc.parallelize([[1, 2, 3], [6, 7, 8], [11, 23, 32]], numSlices = 1) # 修改rdd分区为1个
   rdd1.saveAsTextFile("D:/output1")
   rdd2.saveAsTextFile("D:/output2")
   rdd3.saveAsTextFile("D:/output3")
   ```

   

## 闭包

在函数嵌套的前提下，内部函数使用了外部函数的变量，并且外部函数返回了内部函数，把这使用外部函数变量的内部函数称为闭包。

```python
def outer(num1):

    def inner(num2):
        nonlocal num1 # 使用nonlocal关键字修饰num1,即可修改外部函数的值
        num1 += num2
        print(num1)
        
    return inner

fn = outer(10)
fn(10)
```

## 装饰器

装饰器其实也是一种闭包，其功能就是在**不破坏目标函数原有的代码和功能的前提下，为目标函数增加新功能**

```python
# 装饰器的一般写法（闭包）
def outer(func):
    def inner():
        print("我睡觉了")
        func()
        print("我起床了")
    return inner
def sleep():
    import random
    import time
    print("睡眠中....")
    time.sleep(random.randint(1, 5))

fn = outer(sleep)
fn()

# 装饰器的快捷写法（语法糖）
def outer(func):
    def inner():
        print("我睡觉了")
        func()
        print("我起床了")
    return inner
@outer
def sleep():
    import random
    import time
    print("睡眠中....")
    time.sleep(random.randint(1, 5))

sleep()
```

## 多线程编程

Python中的多线程可以通过threading模块来实现。

> Python中的`threading`模块是用来创建和管理线程的模块，其中最常用的是`Thread`类。`Thread`类中有如下参数：
>
> - `group`：线程所属的线程组，目前该参数还未实现，只能使用默认值`None`。
> - `target`：线程要执行的目标函数。
> - `name`：线程的名称，默认值为`Thread-N`，其中N为自增的数字。
> - `args`：目标函数的参数，以元组(tuple)方式传递。
> - `kwargs`：目标函数的参数，以字典(dictionary)方式传递。
> - `daemon`：该参数为bool类型，表示该线程是否为守护线程。默认值为`False`，即非守护线程。

多线程执行示例代码如下：

```python
import time
import threading

def sing(msg):
    while True:
        print(msg)
        time.sleep(1)

def dance(msg):
    while True:
        print(msg)
        time.sleep(1)

if __name__ == '__main__':
    sing_thread = threading.Thread(target=sing, args=("我要唱歌，哈哈哈",)) # 创建一个唱歌的线程
    dance_thread = threading.Thread(target=dance, kwargs={"msg":"我在跳舞哦，啦啦啦"}) # 创建一个跳舞的线程
    # 让线程去 干活
    sing_thread.start()
    dance_thread.start()
```

## Socket服务端开发

socket是进程之间通信的一个工具，好比现实生活中的插座，所有的家用电器要想工作都是基于插座进行，**进程之间想要进行网络通信需要socket**

socket负责进程之间的网络数据传输，好比数据的搬运工。

socket服务端编程主要分为以下几个步骤：

1. 创建socket对象

   ```python
   import socket
   # 创建socket对象
   socket_server = socket.socket()
   ```

2. 绑定socket_server到指定的IP和地址

   ```python
   socket_server.bind("localhost", 8888)
   ```

3. 服务端开始监听端口

   ```python
   socket_server.listen(1)
   # listen方法内接受一个整数传参数，表示接受的连接数量
   ```

4. 接收客户端连接，获得连接对象

   ```python
   result:tuple= socket_server.accept()
   conn = result[0] # 客户端和服务器的连接对象
   address = result[1] # 客户端的地址信息
   # accept()方法，是阻塞的方法，等待客户端的连接，如果没有连接，就卡在这一行不向下执行了
   print(f"接收到了客户端的连接，客户端的信息是：{address}")
   ```

5. 客户端连接后，通过rev方法，接收客户端发送的消息

   ```python
   # 接受客户端信息，要使用客户端和服务端的本次连接对象，而非socket_server对象
   data = conn.recv(1024).decode("UTF-8")
   # recv接受的参数是缓冲区大小，一般给1024即可
   # recv方法的返回值是一个字节数组也就是bytes对象，不是字符串，可以通过decode方法通过UTF-8编码，将字节数组转换为字符串对象
   print(f"客户端发来的消息是:{data}")
   ```

6. 通过conn(客户端当次连接对象)，调用send方法可以回复消息

   ```python
   msg = input("请输入你要和客户端回复的消息:").encode("UTF-8") # encode可以将字符串编码为字节数组对象
   conn.send(msg)
   ```

7. conn(客户端当次连接对象)和socket_server对象调用close方法，关闭连接

   ```python
   conn.close()
   socket_server.close()
   ```


## Socket客户端开发

```python
import socket
# 创建socket对象
socket_client = socket.socket()
# 连接到服务端
socket_client.connect(("localhost", 8888))
# 发送消息
socket_client.send("你好呀".encode("UTF-8"))
# 接收返回消息
recv_data = socket_client.recv(1024)
print(f"服务端回复的消息是：{recv_data.decode('UTF-8')}")
# 关闭连接
socket_client.close()
```

## 正则匹配

### 基础匹配

python正则表达式，使用re模块，并基于re模块中三个基础方法来做正则匹配。

分别是：`match`、`search`、`findall`三个基础方法

+ `re.match(匹配规则, 被匹配字符串)`

  从被匹配字符串开头进行匹配，匹配成功返回匹配对象(包含匹配的信息)，匹配不成功返回空

+ `search(匹配规则, 被匹配字符串)`

  搜索整个字符串，找出匹配的。从前向后，找到第一个后，就停止，不会继续向后

+ `findall(匹配规则, 被匹配字符串)`

  匹配整个字符串，找出全部匹配项

示例：

```python
import re

s = "python test"
# match 从头匹配
result = re.match("python", s)
print(result)
print(result.span())
print(result.group())

# search 搜索匹配
s = "1pytn23pythondsjajpythonk982sdahjdspython"
result = re.search("python", s)
print(result)
print(result.span())
print(result.group())

# findall 搜索全部匹配
s = "dsapythonsdjappythonsdjak,dhsj,,pythondsah"
result = re.findall("python", s)
print(result)
```

### 元字符匹配

单字符匹配：

| 字符 |                  功能                   |
| :--: | :-------------------------------------: |
|  .   | 匹配任意1个字符(除了\n)，\\. 匹配点本身 |
|  []  |           匹配[]中列举的字符            |
|  \d  |           匹配数字，即 0 - 9            |
|  \D  |               匹配非数字                |
|  \s  |         匹配空白，即空格、tab键         |
|  \S  |               匹配非空白                |
|  \w  |   匹配单词字符，即 a-z、A-Z、 0-9、_    |
|  \W  |             匹配非单词字符              |

示例：

```python
s = "hello testsadjk@@ pythondaskj29849djpythonsa92839it"
result = re.findall(r'[a-zA-Z]', s) # 字符串前面带上r的标记，表示字符串中转义字符无效，就是普通字符的意思
print(result)
```

数量匹配：

| 字符  |               匹配                |
| :---: | :-------------------------------: |
|   *   | 匹配前一个规则的字符出现0至无数次 |
|   +   | 匹配前一个规则的字符出现1至无数次 |
|  ？   | 匹配前一个规则的字符出现0次或1次  |
|  {m}  |    匹配前一个规则的字符出现m次    |
| {m,}  |  匹配前一个规则的字符出现最少m次  |
| {m,n} |  匹配前一个规则的字符出现m到n次   |

边界匹配：

| 字符 |        功能        |
| :--: | :----------------: |
|  ^   |   匹配字符串开头   |
|  $   |   匹配字符串结尾   |
|  \b  | 匹配一个单词的边界 |
|  \B  |  匹配非单词的边界  |

分组匹配：

| 字符 |          功能           |
| :--: | :---------------------: |
|  \|  | 匹配左右任意一个表达式  |
|  ()  | 将括号中字符作为1个分组 |

示例：

```python
# 匹配账号，只能由字母和数字组成，长度限制6到10位
r = '^[0-9a-zA-Z]{6,10}$' # 注意正则表达式内逗号之间不能写空格
s = '23783217983217923'
s1 = '237a343'
print(re.findall(r, s))
print(re.findall(r, s1))
# 匹配QQ号，要求纯数字，长度5 - 11，第一位不为0
r = '^[1-9][0-9]{4,10}$' # 匹配整体而非子串需要带上^ 和 $
s = '012345678'
s1 = '1782798291'
print(re.findall(r, s))
print(re.findall(r, s1))
# 匹配邮箱地址，只允许qq, 163, gmail这三种邮箱地址
r = '^[\w-]+(\.[\w-]+)*@(qq|163|gmail)(\.[\w-]+)+$'
s = 'a.b.c.d.e@163.com'
print(re.match(r, s))
```

