from django import forms
from django.shortcuts import render, redirect, HttpResponse

from app01 import models
from app01.utils.bootstrap import BootStrapForm
from app01.utils.encrypt import md5
from app01.utils.code import check_code

class LoginForm(BootStrapForm):
    username = forms.CharField(
        label="用户名",
        widget=forms.TextInput,
        required=True,
    )
    password = forms.CharField(
        label="密码",
        widget=forms.PasswordInput,
        required=True,
    )
    code = forms.CharField(
        label="验证码",
        widget=forms.TextInput,
        required=True,
    )
    def clean_password(self):
        pwd = self.cleaned_data.get("password")
        return md5(pwd)

def login(request):
    """登录"""
    if request.method == "GET":
        form = LoginForm()
        return render(request, 'login.html', {'form': form})
    form = LoginForm(data=request.POST)
    if form.is_valid():
        # 验证成功,获取到的用户名和密码
        print(form.cleaned_data)

        # 验证码的校验
        user_input_code = form.cleaned_data.pop('code')
        code = request.session.get('image_code', "") # 超时则为空
        if code.upper() != user_input_code.upper(): # 忽略大小写
            form.add_error("code", "验证码错误")
            return render(request, 'login.html', {'form': form})

        # 去数据库校验用户名和密码是否正确，获取用户对象
        admin_object = models.Admin.objects.filter(**form.cleaned_data).first()
        if not admin_object: # 如果用户不存在
            form.add_error("password", "用户名或者密码错误") # 将错误信息显示在密码下面
            return render(request, 'login.html', {'form': form})
        # 网站生成随机字符串；写到用户浏览器的cookie中，再写入到session中
        request.session["info"] = {'id': admin_object.id, "name": admin_object.username}

        # session可以保存1天
        request.session.set_expiry(60 * 60 * 24 * 1)
        return redirect('/admin/list/')
    return render(request, 'login.html', {'form': form})

from io import BytesIO
def image_code(request):
    """生成图片验证码"""
    img, code_string = check_code()
    # 写入到自己的session中，以便后续去获取验证码再进行校验
    request.session['image_code'] = code_string
    # 给session设置60s超时
    request.session.set_expiry(60)

    stream = BytesIO()
    img.save(stream, 'png')
    return HttpResponse(stream.getvalue())


def logout(request):
    """注销"""
    request.session.clear()
    return redirect('/login/')
