*** Settings ***
Resource    keyword-qifi.robot
Test Setup    เปิดโครมเข้า URL qifi.org
Test Teardown    ปิดbrowser

*** Test Cases ***
สร้างQR CODE
    สร้างqrcode    ratthawan    Rice1234