*** Settings ***
Library    SeleniumLibrary

Suite Setup      เปิดเบราว์เซอร์
Test Template    ค้นหาบน Google ผ่าน Chrome
Test Teardown    Go To Google.com

Suite Teardown    Close All Browsers

Resource    resource.google.robot

*** Test Cases ***                            SEARCH_TEXT
ค้นหา robotframework ใน Google ผ่าน Chrome    robotframework
ค้นหา python ใน Google ผ่าน Chrome           python
