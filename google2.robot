*** Settings ***
Resource    google2-keywords.robot
Library    SeleniumLibrary
Test Setup    เปิดโครมเข้าไปที่ www.google.co.th
Test Template    ค้นหาเปิด Google Chrome 
Test Teardown    ปิดหน้าเว็บ

*** Test Cases ***
ค้นหาก๋วยเตี๋ยวเปิด Google Chrome    ก๋วยเตี๋ยวเส้นเล็กน้ำใส
ค้นหารังนกเปิด Google Chrome    ก๋วยเตี๋ยว

