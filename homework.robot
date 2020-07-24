*** Settings ***
Resource    qifi-keywords.robot
Library    SeleniumLibrary
Test Setup    เปิดเว็บ
Test Teardown    ปิดเว็บ



*** Test Cases ***
ทดสอบเว็บ qifi case 1
    ทดสอบเว็บ qifi