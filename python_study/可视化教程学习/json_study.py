# 导入json模块
import json
# 准备符合json格式要求的python数据
data = [{"name":"老王","age":16}, {"name":"张三", "age":20}]
# 通过json.dumps(data) 方法把python数据转化为 json数据
data = json.dumps(data, ensure_ascii=False)
print(data)
# 通过json.loads(data)方法把json数据转化为python数据
data = json.loads(data)
print(data)