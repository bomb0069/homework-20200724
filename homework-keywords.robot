*** Variables ***
${URL}    http://qifi.org/#

*** Keywords ***
นำ QR code
    [Arguments]    ${SSID_TEXT}    ${KEY_TEXT}
    ใส่ input ssid    ${SSID_TEXT}
    ใส่ input key    ${KEY_TEXT}
    กดปุ่ม generate
    เช็คว่ามี QR code ไหม
    ปิดหน้าเว็บ
เปิดเว็บที่ต้องการ
    Open Browser    ${URL}    chrome
ใส่ input ssid
    [Arguments]    ${SSID_TEXT}
    Input Text    ssid    ${SSID_TEXT}
ใส่ input key
    [Arguments]    ${KEY_TEXT}
    Input Text    key    ${KEY_TEXT}
กดปุ่ม generate
    Click Element    id:generate
เช็คว่ามี QR code ไหม
    Element Should Be Enabled    id=qrcode
ปิดหน้าเว็บ
    Close Browser
