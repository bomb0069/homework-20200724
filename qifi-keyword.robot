*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
กรอกอินพุด
    [Arguments]    ${SSID}    ${PASS}
    กรอก SSID    ${SSID}
    กรอก Key    ${PASS}
    กดปุ่ม generate
    check qr code
เข้า qifi ใน Browser
    Open Browser    ${URL}    Chrome
กรอก SSID
    [Arguments]    ${SSID}
    Input Text    ssid    ${SSID}
กรอก Key
    [Arguments]    ${PASS}
    Input Text    key    ${PASS}
กดปุ่ม generate
    Click button    generate
check qr code
    Wait Until Element Is Enabled    id:qrcode
# Close
    # Close Browser