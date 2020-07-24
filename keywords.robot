*** Keywords ***
Qifi
    [Arguments]    ${INPUT_TEXT_SSID}    ${INPUT_TEXT_KEY}
    กรอกช่อง ssid ด้วย 1111    ${INPUT_TEXT_SSID}
    กรอกช่องkeyด้วย2222  ${INPUT_TEXT_SSID}
    กดปุ่มGenerate
    ตรวจสอบผลลัพธ์จากGenerate
    
เปิดเว็ปไซต์qifi.orgจากโครม
    Open Browser    ${URL}    chrome
กรอกช่อง ssid ด้วย 1111
    [Arguments]    ${INPUT_TEXT_SSID}
    Input Text    ssid    1111
กรอกช่องkeyด้วย2222
    [Arguments]    ${INPUT_TEXT_SSID}
    Input Text    key    2222
กดปุ่มGenerate
    Click Button    generate
ตรวจสอบผลลัพธ์จากGenerate
    Wait Until Page Contains Element    id:qrcode    10
ปิด
    Close Browser