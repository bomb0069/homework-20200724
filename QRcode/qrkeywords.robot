*** Variables ***
${URL}    https://qifi.org

**** Keywords ***
เปิดหน้า QR code
    Open Browser    ${URL}    Chrome

กรอก SSID
    Input Text    ssid    Generate

กรอก Key   
    Input Text    key    1234

กดปุ่ม Generate!
    Click button    generate

ปิด Browser
    Close Browser