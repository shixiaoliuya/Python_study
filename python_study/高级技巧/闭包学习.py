# 简单闭包
# def outer(logo):
#
#     def inner(msg):
#         print(f"<{logo}>{msg}<{logo}>")
#     return inner
#
# fn1 = outer("test")
# fn1("hello")
# fn1("world")

# 使用nonlocal 关键字修改外部函数的值
def outer(num1):

    def inner(num2):
        nonlocal num1 # 使用nonlocal关键字修饰num1,即可修改外部函数的值
        num1 += num2
        print(num1)

    return inner

fn = outer(10)
fn(10)

# 使用闭包实现ATM小案例
def account_create(initial_amount = 0):

    def atm(num, deposit = True):
        nonlocal initial_amount
        if deposit:
            initial_amount += num
            print(f"存款：+ {num}, 账户余额：{initial_amount}")
        else:
            initial_amount -= num
            print(f"取款：- {num}, 账户余额：{initial_amount}")
    return atm

atm = account_create()
atm(100)
atm(100)
atm(10, deposit=False)