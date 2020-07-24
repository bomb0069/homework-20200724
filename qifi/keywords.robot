*** Keywords ***
ทดสอบ qifi ใน Google Chrome
    [Arguments]    ${SSID}    ${PASSWORD}
    ใส่ข้อความ SSID    ${SSID}
    ใส่ข้อความ password    ${PASSWORD}
    กดปุ่ม generate!
    รอจนแสดง qr code
    ปิด browser

เปิด https://qifi.org/ ใน Chrome ขึ้นมา
    Open Browser    ${URL}    chrome

ใส่ข้อความ SSID
    [Arguments]    ${SSID}
    Input Text    ssid    ${SSID}

ใส่ข้อความ password
    [Arguments]    ${PASSWORD}
    Input Text    key    ${PASSWORD}

กดปุ่ม generate!
    Click Button    generate

รอจนแสดง qr code
    Wait Until Page Contains Element    id=qrcode 

ปิด browser
    Close Browser
