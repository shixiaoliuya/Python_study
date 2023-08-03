from django.shortcuts import render, HttpResponse, redirect

# Create your views here.
def index(request):
    return HttpResponse("hello world")

def user_list(request):
    # 1.优先去根目录的templates中寻找
    # 2.去app目录下的templates目录寻找user_list.html(根据app的注册顺序，逐一去他们的templates目录中找)
    return render(request, "user_list.html")

def user_add(request):
    return render(request, "user_add.html")

def tpl(request):
    name = "jhon"
    roles = ["管理员", "CEO", "保安"]
    user_info = {"name":"lily", "salary":10000, 'role':'CEO'}

    data_list = [
        {"name": "lily", "salary": 10000, 'role': 'CEO'},
        {"name": "Joe", "salary": 10000, 'role': 'CEO'},
        {"name": "Lihua", "salary": 10000, 'role': 'CEO'},
    ]
    return render(request, "tpl.html", {"n1": name, "n2": roles, "n3":user_info, "n4":data_list})


def something(request):
    # request 是一个对象，封装了用户发送过来的所有请求相关的数据
    # 1.获取请求方式
    print(request.method)
    # 2.在URL上传递值 /something/?n1=123&&n2=999
    print(request.GET)
    # 3.在请求体中提交数据
    print(request.POST)
    # 4.HttpResponse("返回内容"),内容字符串返回给请求者
    # return HttpResponse("返回内容")

    return redirect("https://www.baidu.com")

def login(request):
    if request.method == "GET":
        return render(request, "login.html")
    else:
        # 如果是POST请求，获取用户提交的数据
        print(request.POST)
        username = request.POST.get("user")
        password = request.POST.get("pwd")
        if username == 'root' and password == '123':
            # return HttpResponse("登录成功")
            return redirect("https://www.baidu.com")
        else:
            # return HttpResponse("登录失败")
            return render(request, 'login.html', {"error_msg":"用户名或密码错误"})

from app_test.models import UserInfo
def info_list(request):
    # 1. 获取数据库中所有用户信息
    data_list = UserInfo.objects.all()
    print(data_list)
    return render(request, "info_list.html", {"data_list":data_list})

def info_add(request):
    if request.method == "GET":
        return render(request, 'info_add.html')
    # 获取用户提交的数据
    user = request.POST.get("user")
    pwd = request.POST.get("pwd")
    age = request.POST.get("age")

    # 添加到数据库
    UserInfo.objects.create(name=user, password=pwd, age=age)

    return redirect("/info/list/")

def info_delete(request):
    nid = request.GET.get("nid")
    UserInfo.objects.filter(id=nid).delete()
    return redirect("/info/list/")