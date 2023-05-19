class Student:
    def __init__(self, name, age):
        self.name = name
        self.age = age
    def __eq__(self, other):
        return self.age == other.age
    # def __str__(self):
    #     return f"Student类对象，name={self.name},age={self.age}"
    # def __lt__(self, other):
    #     return self.age < other.age
    # def __le__(self, other):
    #     return self.age <= other.age

student1 = Student("Jhon", 12)
student2 = Student("Tom", 12)
print(student1 == student2) # 结果：True
# print(student1 <= student2) # 结果：True
# print(student1 >= student2) # 结果：False
# print(student) # 结果： Student类对象，name=Jhon,age=12
# print(str(student)) # 结果：Student类对象，name=Jhon,age=12
