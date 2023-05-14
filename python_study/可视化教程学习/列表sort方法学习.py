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