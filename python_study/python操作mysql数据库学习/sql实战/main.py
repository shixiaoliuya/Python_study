
from file_define import FileReader, TextFileReader, JsonFileReader
from data_define import Record
from pyecharts.charts import Bar
from pyecharts.options import *
from pyecharts.globals import ThemeType
from pymysql import Connection

text_file_reader = TextFileReader("D:/py_works/python_study/面向对象部分/案例实战数据/2011年1月销售数据.txt")
json_file_reader = JsonFileReader("D:/py_works/python_study/面向对象部分/案例实战数据/2011年2月销售数据JSON.txt")

jan_data: list[Record] = text_file_reader.read_data()
feb_data: list[Record] = json_file_reader.read_data()
# 将两个月份的护具合并为1个list
all_data: list[Record] = jan_data + feb_data

# 构建MySQL 数据库
conn = Connection(
    host="localhost",
    port=3306,
    user="root",
    password="root",
    autocommit=True
)
# 获得游标对象
cur = conn.cursor()
# 选择数据库
conn.select_db("test")
# 组织SQL语句
for record in all_data:
    sql = f"insert into orders(order_date, order_id, money, province) " \
        f"values('{record.date}', '{record.order_id}', '{record.money}', '{record.province}')"
    # print(sql)
    cur.execute(sql)

conn.close()