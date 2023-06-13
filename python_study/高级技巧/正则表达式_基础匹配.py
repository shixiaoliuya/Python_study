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