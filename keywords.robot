*** Variables ***
${URL}    https://qifi.org/

*** Keywords ***
ทดสอบเว็บ qifi
    [Arguments]    ${ID}    ${PASS}
    กรอก ID wifi   ${ID}
    กรอก Password wifi    ${PASS}
    สร้าง QR Code
    เช็ค QR Code

เปิดเว็ป qifi ด้วย Google Chrome
    Open Browser    ${URL}     chrome

กรอก ID wifi
    [Arguments]    ${ID}
    Input Text    ssid    ${ID}

กรอก Password wifi
    [Arguments]    ${PASS}
    Input Text    key    ${PASS}

สร้าง QR Code
    Click Element    generate

เช็ค QR Code
    Wait Until Element Is Visible    //*[@id="qrcode"]/canvas

ปิด บราวเซอร์
    Close Browser 