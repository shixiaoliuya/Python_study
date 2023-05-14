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