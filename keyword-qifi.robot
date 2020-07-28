*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://qifi.org/

*** Keywords ***
Generate qrcode ใน Google ผ่าน chrome
    [Arguments]    ${ID}    ${KEY}
    กรอก SSID และ KEY    ${ID}    ${KEY}
    กด Generate
    ตรวจสอบว่ามี QR code

เปิด chrome browser ขึ้นมา เข้า qifi.org
    Open Browser    ${URL}    chrome

กรอก SSID และ KEY
    [Arguments]    ${ID}    ${KEY}
    Input Text     ssid     ${ID}
    Input Text     key       ${KEY}

กด Generate
    Press Keys    generate    ENTER 

ตรวจสอบว่ามี QR code
    Wait Until Page Contains    qrcode    2

ปิดหน้าเว็บ
    Close Browser