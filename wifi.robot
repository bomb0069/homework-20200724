*** Settings ***
Resource   keywords.robot
Test Setup      เปิด Chrome เข้า https://qifi.org/
Test Template   Generate QR Wifi โดย https://qifi.org/ ผ่าน Chrome
Test Teardown   ปิด Chrome

*** Test Cases ***                       SSID        PASSWORD
ทดสอบ qifi (1) ใน Chrome                kevin       abc
ทดสอบ qifi (2) ใน Chrome                mariott     xyz