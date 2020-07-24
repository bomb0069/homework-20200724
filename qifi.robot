*** Settings ***
Resource         keyword.robot
Test Setup       เปิด google chrome เข้าเว็บ qifi.org/
Test Template    กรอกค่าใน qifi ผ่าน Chrome
Test Teardown    ปิดหน้าต่าง

*** Test Cases ***                               SSID              PASSWORD
กรอกค่า ssid กับ password ใน qifi ผ่าน Chrome    veeraphat-wifi       secret123

