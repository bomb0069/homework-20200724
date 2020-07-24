*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://qifi.org/

*** Keywords ***
สร้างqrcode
    [Arguments]    ${SSID_TEXT}    ${KEY_TEXT}
    ใส่SSID    ${SSID_TEXT}
    ใส่Key    ${KEY_TEXT}
    กดปุ่มGenerate
    Check QR Code
เปิดโครมเข้า URL qifi.org
    Open Browser    ${URL}    chrome
ใส่SSID
    [Arguments]    ${SSID_TEXT}
    Input Text    ssid    ${SSID_TEXT}
ใส่Key
    [Arguments]    ${KEY_TEXT}
    Input Text    key    ${KEY_TEXT}
กดปุ่มGenerate
    Click Button    generate
Check QR Code
    Page Should Contain Element    qrcode
    Get Selenium Implicit Wait
ปิดbrowser
    Close Browser