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