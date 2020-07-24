*** Settings ***
Resource    Keyword.robot
Library    SeleniumLibrary
Test Setup    เปิด google.com ใน chrome
Test Template    ค้นหา    
Test Teardown    ปิดหน้าเว็บ

*** Test Cases ***
ค้นหา kerati kasisuwan ผ่าน Google Chrome    kerati kasisuwan
    
ค้นหา brownie ผ่าน Google Chrome    brownie
    