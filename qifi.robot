*** Settings ***
Library    SeleniumLibrary
Test Setup    เปิดGoogleChromeเข้าลิงก์ 
Test Template      การสร้าง QR Code
Test Teardown    ปิด Browser


*** Test Cases ***      ${SSID}     ${Key}
การสร้าง QR Code          kkkkanun   1111111
การสร้าง QR Code          1111111    2222222

   
   
*** Keywords ***   
การสร้าง QR Code
    [Arguments]     ${SSID}    ${Key}
    ใส่เลข SSID    ${SSID}
    ใส่ Key        ${Key}
    กด Generate และแสดง QR Code
    
เปิดGoogleChromeเข้าลิงก์ 
    Open Browser    https://qifi.org/    chrome
ใส่เลข SSID
    [Arguments]     ${SSID}
    Input text    ssid    ${SSID}
ใส่ Key
    [Arguments]        ${Key}
    Input text    key    ${Key}
กด Generate และแสดง QR Code
    Press Keys    generate    ENTER
ปิด Browser
    Close Browser
