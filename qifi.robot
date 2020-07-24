*** Settings ***
Resource    keywords.robot
Library     SeleniumLibrary
Test Setup  เปิดเว็ป qifi ด้วย Google Chrome
Test Teardown    ปิด บราวเซอร์
Test Template    ทดสอบเว็บ qifi

*** Test Cases ***
กรอกชื่อและรหัส wifi    thitipon    1234
