"""
类型注解
"""
import json
import random

from typing import Union
my_list: list[Union[str, int]] = [1, 2, "hello", "world"]
my_dict: dict[str, Union[str, int]] = {"name": "zhangsan", "age": 31}

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

def add(x: int, y: int):
    return x + y

