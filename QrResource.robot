*** Settings ***
Library    SeleniumLibrary


*** Keywords ***

ใส่ username และ password เพื่อ generate
    [Arguments]     ${username}    ${password}
    Input Text    ssid    ${username}
    Input Text    key    ${password}
    Click Element    id:generate
    Page Should Contain Element    id:qrcode    limit=1


เปิด Browser แล้วไปที่ https://qifi.org/
    Open Browser    https://qifi.org/    chrome



    