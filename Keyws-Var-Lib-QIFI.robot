*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${qifiURL}    https://qifi.org/

*** Keywords ***

สร้าง QRCode ด้วย id และ key
    [Arguments]    ${ID}    ${KEY}
    กรอก SSID    ${ID}
    กรอก Key    ${KEY}
    กดปุ่ม Generate!
    ตรวจสอบ Output: QR Code

เปิดเว็บ qifi ด้วย Chrome browser
    Open Browser    ${qifiURL}    chrome
กรอก SSID
    [Arguments]    ${ID}
    Input Text    id=ssid    ${ID}
กรอก Key
    [Arguments]    ${KEY}
    Input Text    id=key    ${KEY}
กดปุ่ม Generate!
    Click Element    id=generate
ตรวจสอบ Output: QR Code
    Wait Until Element Is Enabled    //*[@id="qrcode"]/canvas
ปิด Browser
    Close Browser