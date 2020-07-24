*** Keywords ***
สร้าง qr code ใน qifi.org
    ค้นหา
    กดปุ่ม generate!
    รอจนแสดง qr code
    ปิด browser

กรอกค่า 2 ค่า
    Input Text    ssid    chutimon
    Input Text    key    125259

กดปุ่ม generate!
    Click Button    generate

รอจนแสดง qr code
    Wait Until Page Contains Element    id=qrcode 

ปิด browser
    Close Browser
