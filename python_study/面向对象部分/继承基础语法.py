"""
继承的基本使用
"""
# 单继承
class Phone:
    IMEI = None  # 序列号
    producer = "HM"  # 厂商

    def call_by_4g(self):
        print("4G通话")
# 定义子类，复写父类成员
class myPhone(Phone):
    producer = "IT"
    def call_by_4g(self):
        print("开启CPU单核模式，确保通话的时候省电")
        # 方式1
        print(f"父类的厂商是{Phone.producer}")
        Phone.call_by_4g(self)
        # 方式2
        print(f"父类的厂商是{super().producer}")
        super().call_by_4g()
        print("关闭CPU单核模式，确保性能")
pho = myPhone()
pho.call_by_4g()
print(pho.producer)
class Phone2022(Phone):
    face_id = "1001" # 面部识别ID
    def call_by_5g(self):
        print("2022新功能，5G通话")

phone = Phone2022()
print(phone.producer)
phone.call_by_5g()
phone.call_by_4g()

# 多继承
class NFCReader:
    nfc_type = "第五代"
    producer = "HM"

    def read_card(self):
        print("NFC读卡")
    def write_card(self):
        print("NFC写卡")

class RemoteControl:
    rc_type = "红外遥控"

    def control(self):
        print("红外遥控开启了")

class MyPhone(Phone, NFCReader, RemoteControl):
    pass

phone = MyPhone()
phone.call_by_4g()
phone.read_card()
phone.write_card()
phone.control()