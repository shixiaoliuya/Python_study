"""
演示python pymysql库的基本操作
"""

from pymysql import Connection
# 构建到MySQL数据库的链接
conn = Connection(
    host="localhost", # 主机名（IP）、
    port=3306, # 端口
    user="root", # 账户
    password="root",
    autocommit=True # 自动提交
)
# print(conn.get_server_info())

# 执行非查询性质SQL
cur = conn.cursor() # 获取到游标对象
conn.select_db("test") # 选择数据库
cur.execute("insert into student values(1002, 'Joe', 21, '男')")
# 通过commit确认
# conn.commit()
# cur.execute("create table test_pymysql(id int);") # 执行sql

# 执行查询性质SQL
# cur.execute("select * from student")
# results:tuple = cur.fetchall()
# 关闭链接
conn.close()