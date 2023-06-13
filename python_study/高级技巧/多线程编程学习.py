"""
多线程编程学习
"""
import time
import threading

def sing(msg):
    while True:
        print(msg)
        time.sleep(1)

def dance(msg):
    while True:
        print(msg)
        time.sleep(1)

if __name__ == '__main__':
    sing_thread = threading.Thread(target=sing, args=("我要唱歌，哈哈哈",)) # 创建一个唱歌的线程
    dance_thread = threading.Thread(target=dance, kwargs={"msg":"我在跳舞哦，啦啦啦"}) # 创建一个跳舞的线程
    # 让线程去 干活
    sing_thread.start()
    dance_thread.start()