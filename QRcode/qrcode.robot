*** Settings ***
Resource    qrkeywords.robot
Library    SeleniumLibrary
Test Setup    เปิดหน้า QR code
Test Teardown    ปิด Browser

*** Test Cases ***
Generate QR code
    กรอก SSID
    กรอก Key
    กดปุ่ม Generate!