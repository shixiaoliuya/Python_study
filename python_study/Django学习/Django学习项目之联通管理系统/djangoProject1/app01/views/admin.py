from django import forms
from django.core.exceptions import ValidationError
from django.shortcuts import render, redirect

from app01 import models
from app01.utils.pagination import Pagination

def admin_list(request):
    """管理员列表"""

    # 搜索
    data_list = {}
    search_data = request.GET.get('search', "")
    if search_data:
        data_list["username__contains"] = search_data

    queryset = models.PrettNum.objects.filter(**data_list)

    queryset =models.Admin.objects.all()

    page_object = Pagination(request, queryset)
    context = {
        'queryset': page_object.page_queryset,
        'page_string': page_object.html(),
        'search_data': search_data,
    }
    return render(request,'admin_list.html', context)

from app01.utils.form import AdminModelForm, AdminResetModelForm, AdminEditModelForm
from app01.utils.bootstrap import BootStrapModelForm

def admin_add(request):
    """添加管理员"""
    title = "新建管理员"
    if request.method == "GET":
        form = AdminModelForm()
        return render(request, 'change.html', {"form":form, "title":title})

    form = AdminModelForm(data=request.POST)
    if form.is_valid():
        form.save()
        return redirect('/admin/list/')
    return render(request, 'change.html', {"form": form, "title": title})





def admin_edit(request, nid):
    """编辑管理员"""
    row_object = models.Admin.objects.filter(id=nid).first()
    if not row_object:
        return render(request, 'error.html', {"msg": "数据不存在"})
    title = "新建管理员"
    if request.method == "GET":
        form = AdminEditModelForm(instance=row_object)  # instance显示默认值
        return render(request, 'change.html', {"form": form, "title": title})
    form = AdminEditModelForm(data=request.POST, instance=row_object)
    if form.is_valid():
        form.save()
        return redirect('/admin/list/')
    return render(request, 'change.html', {"form": form, "title": title}) # 不合法返回错误信息

def admin_delete(request, nid):
    """删除管理员"""
    models.Admin.objects.filter(id=nid).delete() # 删除
    return redirect("/admin/list/")

def admin_reset(request, nid):
    row_object = models.Admin.objects.filter(id=nid).first()
    if not row_object:
        return render(request, 'error.html', {"msg": "数据不存在"})

    title = "重置密码 - {}".format(row_object.username)
    if request.method == "GET":
        form = AdminResetModelForm()
        return render(request, 'change.html', {"form": form, "title": title})
    form = AdminResetModelForm(data=request.POST, instance=row_object)
    if form.is_valid():
        form.save()
        return redirect('/admin/list/')
    return render(request, 'change.html', {"form":form, "title":title})
