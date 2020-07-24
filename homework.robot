*** Settings ***
Resource    qifi-keywords.robot
Library    SeleniumLibrary
Test Template    ทดสอบเว็บ qifi
Test Setup    เปิดเว็บ
Test Teardown    ปิดเว็บ



*** Test Cases ***      ${SSID}   ${PASS}
ทดสอบเว็บ qifi case 1    wifi      1234