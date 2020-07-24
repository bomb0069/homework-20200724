*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://qifi.org/

*** Keywords ***
ทดสอบ qifi ใน Google Chrome
    [Arguments]    ${SSID}    ${PASSWORD}
    ใส่ข้อความ SSID    ${SSID}
    ใส่ข้อความ password    ${PASSWORD}
    กดปุ่ม Enter
    รอ qr code ปรากฏ
    ปิด

เปิดกูเกิลโครมขึ้นมา เข้า URL qifi.org
    Open Browser    ${URL}    chrome

ใส่ข้อความ SSID
    [Arguments]    ${SSID}
    Input Text    ssid    ${SSID}

ใส่ข้อความ password
    [Arguments]    ${PASSWORD}
    Input Text    key    ${PASSWORD}

กดปุ่ม Enter
    Press Keys         key                                 RETURN

รอ qr code ปรากฏ
    Wait Until Element Is Enabled    id:qrcode

ปิด
    Close Browser