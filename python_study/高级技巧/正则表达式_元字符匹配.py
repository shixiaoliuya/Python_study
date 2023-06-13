import re
# s = "hello testsadjk@@ pythondaskj29849djpythonsa92839it"
# result = re.findall(r'[a-zA-Z]', s) # 字符串前面带上r的标记，表示字符串中转义字符无效，就是普通字符的意思
# print(result)

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