*** Settings ***
Resource    keywords.robot
Library    SeleniumLibrary
Test Setup    เปิดเว็ปด้วย Google Chrome
Test Template    ค้นหาบน Google ผ่าน Chrome
Test Teardown    ปิดเว็ป

*** Test Cases ***                   SEARCH_TEXT
ค้นหาคำว่า รถ ใน Google ผ่าน Chrome     รถ
ค้นหาคำว่า rem ใน Google ผ่าน Chrome    Re:zero rem
