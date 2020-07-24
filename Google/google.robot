*** Settings ***
Resource    keywords.robot
Library    SeleniumLibrary
Test Setup    เปิด Google ด้วย Google Chrome
Test Template    ค้นหาบน Google ผ่าน Chrome
Test Teardown    ปิด Google Chrome

*** Test Cases ***
ค้นหายาธาตุน้ำขาว ใน Google ผ่าน Chrome       ยาธาตุน้ำขาว
ค้นหาแมลง ใน Google ผ่าน Chrome            แมลง