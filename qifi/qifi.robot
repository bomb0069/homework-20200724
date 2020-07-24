*** Settings ***
Resource    keywords.robot
Library    SeleniumLibrary
Test Setup    เปิด https://qifi.org/ ใน Chrome ขึ้นมา
Test Template    ทดสอบ qifi ใน Google Chrome
Test Teardown   ปิด Browser

*** Variable ***
${URL}    https://qifi.org/

*** Test Cases ***                       SSID        PASSWORD
ทดสอบ qifi chutimon ใน Google Chrome    chutimon    654321
ทดสอบ qifi mind ใน Google Chrome       mind       123456 