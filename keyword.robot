*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://qifi.org/

*** Keywords ***
กรอกค่าใน qifi ผ่าน Chrome
    [Arguments]    ${ssid}    ${password}
    พิมพ์ ssid    ${ssid}
    พิมพ์ password    ${password}
    กด generate
    รอให้ qr code ขึ้นมา
    ปิดหน้าต่าง

เปิด google chrome เข้าเว็บ qifi.org/
    Open Browser   ${URL}    Chrome

พิมพ์ ssid
    [Arguments]    ${ssid}
    Input Text    ssid    ${ssid}


พิมพ์ password
    [Arguments]    ${password}
    Input Text    key    ${password}

กด generate
    Click Button    Generate!

รอให้ qr code ขึ้นมา
    Wait Until Element Is Enabled    id:qrcode

ปิดหน้าต่าง
    Close Browser