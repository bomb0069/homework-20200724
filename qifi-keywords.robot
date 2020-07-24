*** Variables ***
${URL}    https://qifi.org/
${SSID}    wifi
${PASS}    1234

*** Keywords ***
ทดสอบเว็บ qifi
    กรอกชื่อ/รหัส wifi    ${SSID}    ${PASS}
    กดปุ่มสร้าง QR Code
    เช็คว่ามี QR Code หรือไม่

เปิดเว็บ
    Open Browser    ${URL}    chrome

กรอกชื่อ/รหัส wifi
    [Arguments]    ${SSID}    ${PASS}
    Input Text    ssid    ${SSID}
    Input Text    key    ${SSID}

กดปุ่มสร้าง QR Code
    Click Element    generate

เช็คว่ามี QR Code หรือไม่
    Wait Until Element Is Visible    //*[@id="qrcode"]/canvas
    
ปิดเว็บ
    Close Browser