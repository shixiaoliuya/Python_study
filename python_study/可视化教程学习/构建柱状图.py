"""
柱状图的开发
"""
from pyecharts.charts import Bar
from pyecharts.options import LabelOpts
# 使用Bar构建基础柱状图
bar = Bar()
bar.add_xaxis(["中国", "美国", "英国"])
# label_opts=LabelOpts(position="right")使得数值标签在右侧
bar.add_yaxis("GDP", [30, 20, 10], itemstyle_opts={"color": "red"}, label_opts=LabelOpts(position="right"))
# 反转 x 轴和 y 轴
bar.reversal_axis()
bar.render("基础柱状图.html")
# 设置数值标签在右侧