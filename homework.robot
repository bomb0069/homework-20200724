*** Settings ***
Resource    homework-keywords.robot
Library    SeleniumLibrary
Test Setup    เปิดเว็บที่ต้องการ
Test Template    นำ QR code 
Test Teardown    ปิดหน้าเว็บ

*** Test Cases ***
นำ QR code    nearnear    123456
