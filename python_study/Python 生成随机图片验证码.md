# Python 生成随机图片验证码

在写一个Web项目的时候一般要写登录操作，而为了安全起见，现在的登录功能都会加上输入图片验证码这一功能，在利用Django开发Web项目的过程中，可以使用 Python 生成一个如下所示的图片验证码：

![code](https://typorapic.oss-cn-shenzhen.aliyuncs.com/code.jpg)

pillow详细内容参考官方文档：https://pillow.readthedocs.io/en/stable/?badge=latest

pillow的GitHub地址：https://github.com/python-pillow/Pillow

## 安装pillow包

```python
pip install pillow
```

## pillow包生成图片基本用法

1. 创建图片

   ```python
   from PIL import Image
   img = Image.new(mode='RGB', size=(120, 30), color=(255, 255, 255))
   
   # 在图片查看器中查看
   img.show()
   
   # 保存到本地
   with open('code.png', 'wb') as f:
       img.save(f, format='png')
   ```

2. 创建一支画笔，用于在图片上画任意内容

   ```python
   img = Image.new(mode='RGB', size=(120, 30), color=(255, 255, 255))
   
   draw = ImageDraw.Draw(img, mode='RGB')
   ```

   画点

   ```python
   # 第一个参数表示坐标，第二个参数表示颜色
   draw.point([100, 100], fill="red")
   draw.point([300, 300], fill=(255, 255, 255))
   ```

   画线

   ```python
   # 第一个参数表示起始坐标和结束坐标，第二个参数表示颜色
   draw.line((100, 100, 100, 100), fill="red")
   draw.line((100, 100, 300, 100), fill=(255, 255, 255))
   ```

   画圆

   ```python
   # 第一个参数：表示起始坐标和结束坐标（圆要画在其中间）
   # 第二个参数：表示开始角度
   # 第三个参数：表示结束角度
   # 第四个参数：表示颜色
   draw.arc((100,100,300,300),0,90,fill="red")
   ```

   写文本

   ```python
   # 第一个参数：表示起始坐标
   # 第二个参数：表示写入内容
   # 第三个参数：表示颜色
   draw.text([0,0],'python',"red")
   ```

   特殊字体文字

   **如下所示，将下载下来的`ttf`字体文件导入就可以生成带有对应字体的图片**
   
   分享一个免费下载字体网站：http://www.webpagepublicity.com/free-fonts.html
   
   找到自己下载的字体文件保存好后按照如下示例进行写代码即可
   
   ```python
   # 第一个参数：表示字体文件路径
   # 第二个参数：表示字体大小
   font = ImageFont.truetype("kumo.ttf", 28)
   # 第一个参数：表示起始坐标
   # 第二个参数：表示写入内容
   # 第三个参数：表示颜色
   # 第四个参数：表示颜色
   draw.text([0, 0], 'python', "red", font=font)
   ```
   

## 生成图片验证码

```python
import random
from PIL import Image, ImageDraw, ImageFont, ImageFilter

# 生成默认含4个字符验证码的图片
def check_code(width=120, height=30, char_length=4, font_file='Monaco.ttf', font_size=28):
    code = []
    img = Image.new(mode='RGB', size=(width, height), color=(255, 255, 255))
    draw = ImageDraw.Draw(img, mode='RGB')

    def rndChar():
        """
        生成随机大小写字母
        :return:
        """
        up_or_low = random.randint(0, 1)
        if up_or_low == 0:
            return chr(random.randint(97, 122))
        return chr(random.randint(65, 90))

    def rndColor():
        """
        生成随机颜色
        :return:
        """
        return (random.randint(0, 255), random.randint(10, 255), random.randint(64, 255))

    # 写文字
    font = ImageFont.truetype(font_file, font_size)
    for i in range(char_length):
        char = rndChar()
        code.append(char)
        h = random.randint(0, 4)
        draw.text([i * width / char_length, h], char, font=font, fill=rndColor())

    # 写干扰点
    for i in range(40):
        draw.point([random.randint(0, width), random.randint(0, height)], fill=rndColor())

    # 写干扰圆圈
    for i in range(40):
        draw.point([random.randint(0, width), random.randint(0, height)], fill=rndColor())
        x = random.randint(0, width)
        y = random.randint(0, height)
        draw.arc((x, y, x + 4, y + 4), 0, 90, fill=rndColor())

    # 画干扰线
    for i in range(5):
        x1 = random.randint(0, width)
        y1 = random.randint(0, height)
        x2 = random.randint(0, width)
        y2 = random.randint(0, height)

        draw.line((x1, y1, x2, y2), fill=rndColor())

    img = img.filter(ImageFilter.EDGE_ENHANCE_MORE)
    return img, ''.join(code)


if __name__ == '__main__':
    img, code_str = check_code()
    print(code_str)

    with open('code.png', 'wb') as f:
        img.save(f, format='png')
        
    # 1. 直接打开
    # img,code = check_code()
    # img.show()
 
    # 2. 写入文件
    # img,code = check_code()
    # with open('code.png','wb') as f:
    #     img.save(f,format='png')
 
    # 3. 写入内存(Python3) **在web项目开发中一般将生成的图片写入内存而不是写入文件保存起来**
    # from io import BytesIO
    # stream = BytesIO()
    # img.save(stream, 'png')
    # stream.getvalue()
 
    # 4. 写入内存（Python2）
    # import StringIO
    # stream = StringIO.StringIO()
    # img.save(stream, 'png')
    # stream.getvalue()
```

运行结果如下所示：

![image-20230725214517109](https://typorapic.oss-cn-shenzhen.aliyuncs.com/image-20230725214517109.png)