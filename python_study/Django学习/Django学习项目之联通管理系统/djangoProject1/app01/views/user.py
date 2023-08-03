from django.shortcuts import render, redirect

# Create your views here.
from app01 import models

from app01.utils.pagination import Pagination
from app01.utils.bootstrap import BootStrapModelForm
from app01.utils.form import UserModelForm, PrettyModelForm, PrettyEditModelForm

def user_list(request):
    """用户列表"""

    # 获取所有用户列表
    queryset = models.UserInfo.objects.all()
    page_object = Pagination(request, queryset)
    context = {
        "queryset": page_object.page_queryset,
        "page_string": page_object.html()
    }
    return render(request, 'user_list.html', context)

def user_add(request):
    """添加用户"""
    if request.method == "GET":
        context = {
            'gender_choices': models.UserInfo.gender_choices,
            'depart_list': models.Department.objects.all()
        }
        return render(request, 'user_add.html', context)
    # 获取用户提交的数据
    user = request.POST.get('user')
    pwd = request.POST.get('pwd')
    age = request.POST.get('age')
    account = request.POST.get('ac')
    ctime = request.POST.get('ctime')
    gender_id = request.POST.get('gd')
    depart_id = request.POST.get('dp')

    # 添加到数据库中
    models.UserInfo.objects.create(name=user, password=pwd, age=age, account=account,
                                   create_time=ctime, gender=gender_id, depart_id=depart_id)
    # 返回到用户列表页面
    return redirect("/user/list/")

def user_model_form_add(request):
    """添加用户modelform版本"""
    if request.method == "GET":
        form = UserModelForm()
        return render(request, 'user_model_form_add.html', {"form": form})
    # 用户POST提交数据，数据的校验
    form = UserModelForm(data=request.POST)
    if form.is_valid():
        # 如果数据合法，保存到数据库
        print(form.cleaned_data)
        form.save()
        return redirect('/user/list/')
    # 校验失败, 在页面上显示错误信息
    return render(request, 'user_model_form_add.html', {"form": form})

def user_edit(request, nid):
    """编辑用户"""
    row_object = models.UserInfo.objects.filter(id=nid).first()
    if request.method == "GET":
        # 根据ID去数据库获取要编辑的那一行数据
        form = UserModelForm(instance=row_object)
        # instance参数的作用是将一个对象实例作为初始数据传递给表单，以便在表单中显示和编辑该对象的数据
        return render(request, 'user_edit.html', {'form': form})
    form = UserModelForm(data=request.POST, instance=row_object)
    if form.is_valid():
        # 若还想要在用户输入以外增加一点值
        # form.instance.字段名 = 值
        form.save()
        return redirect('/user/list/')
    return render(request, 'user_edit.html', {"form":form})

def user_delete(request, nid):
    models.UserInfo.objects.filter(id=nid).delete()
    return redirect('/user/list/')