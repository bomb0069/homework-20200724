*** Settings ***
Resource    keywordsqifi.robot
Test Setup    เปิดกูเกิลโครมขึ้นมา เข้า URL qifi.org
Test Template    ทดสอบ qifi ใน Google Chrome
Test Teardown    ปิด

*** Test Cases ***                       SSID        PASSWORD
ทดสอบ qifi sck-dojo ใน Google Chrome    sck-dojo    shuhari
ทดสอบ qifi joker ใน Google Chrome       joker       123456