*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://qifi.org/

*** Keywords ***
การสร้าง QR Code
    [Arguments]    ${SSID}    ${Key}
    ใส่เลข SSID    ${SSID}    
    ใส่ Key    ${Key}
    กด Generate และแสดง QR Code
    
เปิด qifi web Browser ขึ้นมา
    Open Browser    https://qifi.org/    chrome
ใส่เลข SSID
    [Arguments]    ${SSID}
    Input Text    ssid    ${SSID}
ใส่ Key
    [Arguments]    ${Key}
    Input Text    key    ${Key}
กด Generate และแสดง QR Code
    Press keys    generate    ENTER
    Element Should Be Enabled    id:qrcode
ปิด Browser
    Close Browser