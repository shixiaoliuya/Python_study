from django.shortcuts import render, redirect

# Create your views here.
from app01 import models

from app01.utils.pagination import Pagination
from app01.utils.bootstrap import BootStrapModelForm
from app01.utils.form import UserModelForm, PrettyModelForm, PrettyEditModelForm


def pretty_list(request):
    """靓号列表"""

    # for i in range(300):
    #     models.PrettNum.objects.create(mobile="188888888", price=1, level=1, status=1)

    # 靓号搜索功能
    data_list = {}
    search_data = request.GET.get('search', "")
    if search_data:
        data_list["mobile__contains"] = search_data

    queryset = models.PrettNum.objects.filter(**data_list).order_by("-level")

    page_object = Pagination(request, queryset)

    context = {
        'queryset': page_object.page_queryset, # 分完页的数据
        'search_data':search_data,
        "page_string":page_object.html(), # 生成的页码
    }
    return render(request, 'pretty_list.html', context)


def pretty_add(request):
    """添加靓号"""
    if request.method == "GET":
        form = PrettyModelForm()
        return render(request, 'pretty_add.html', {'form': form})
    form = PrettyModelForm(data=request.POST)
    if form.is_valid():
        # 如果数据合法，保存到数据库
        form.save()
        return redirect('/pretty/list/')
    # 校验失败, 在页面上显示错误信息
    return render(request, 'pretty_add.html', {"form": form})


def pretty_edit(request, nid):
    """编辑靓号"""
    row_object = models.PrettNum.objects.filter(id=nid).first()
    if request.method == "GET":
        form = PrettyEditModelForm(instance=row_object)
        return render(request, 'pretty_edit.html', {'form':form})
    form = PrettyEditModelForm(data=request.POST, instance=row_object)
    if form.is_valid():
        form.save()
        return redirect('/pretty/list/')
    return render(request, 'pretty_edit.html', {'form': form})

def pretty_delete(request, nid):
    """删除靓号"""
    models.PrettNum.objects.filter(id=nid).delete()
    return redirect('/pretty/list/')