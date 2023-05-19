class student:
    name = None
    age = None
    tel = None
    # 上面三行可以省略不写
    def __init__(self, name, age, tel):
        self.name = name
        self.age = age
        self.tel = tel
        print("Student类创建了一个对象")
stu = student("Jhon", 31, "238923312")