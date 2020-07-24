*** Keywords ***
ค้นหาบน Google ผ่าน Chrome
    [Arguments]    ${SEARCH_TEXT}
    ค้นหา    ${SEARCH_TEXT}
    กดปุ่มค้นหา
    เลือก URL ของลิงค์ที่มีหัวข้อน่าเชื่อถือที่สุด
สร้าง QR-code ผ่าน qifi
    [Arguments]    ${SSID}    ${Key}
    พิมพ์ SSID    ${SSID}
    พิมพ์ Key     ${KEY}
    กดปุ่ม Generate
    รอดู QR
    
เปิด Browser
    Open Browser    ${URL}    chrome
ค้นหา
    [Arguments]    ${SEARCH_TEXT}
    Input Text    q    ${SEARCH_TEXT}
กดปุ่ม ค้นหา
    Press Keys    q    RETURN
เลือก URL ของลิงค์ที่มีหัวข้อน่าเชื่อถือที่สุด
    Click Link    //div[@class="r"]//a
ปิดหน้าต่าง
    Close Browser
พิมพ์ SSID
    [Arguments]    ${SSID}
    Input Text    ssid    ${SSID}   
พิมพ์ Key
    [Arguments]    ${KEY}
    Input Text    key    ${KEY}
กดปุ่ม Generate
    Press Keys    generate    RETURN
รอดู QR
    Wait Until Page Contains Element    id:qrcode