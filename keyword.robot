*** Variables ***
${URL}    http://google.co.th



*** Keywords ***   
ค้นหาบน google ผ่าน Chrome
    [Arguments]    ${SEARCH_TEXT}     
    ค้นหา    ${SEARCH_TEXT}
    กด enter หรือกดที่ช่องค้นหา
    คลิกที่ลิงค์แรกที่ขึ้น
เปิดโครมขึ้นมา
    Open Browser     ${URL}        chrome
ค้นหา
    [Arguments]    ${SEARCH_TEXT}
    Input TEXT    q    ${SEARCH_TEXT}
กด enter หรือกดที่ช่องค้นหา
    Press Keys    q    ENTER
รอจนโหลดเสร็จ
    Wait Until Page Contains    ขนม  
คลิกที่ลิงค์แรกที่ขึ้น
    Click Element      //div[@class="r"]//a
เสร็จสิ้น
    Close Browser

การสร้าง QR Code
    [Arguments]     ${SSID}    ${Key}
    ใส่เลข SSID    ${SSID}
    ใส่ Key        ${Key}
    กด Generate และแสดง QR Code
    
เปิดGoogleChromeเข้าลิงก์ 
    Open Browser    https://qifi.org/    chrome
ใส่เลข SSID
    [Arguments]     ${SSID}
    Input text    ssid    ${SSID}
ใส่ Key
    [Arguments]        ${Key}
    Input text    key    ${Key}
กด Generate และแสดง QR Code
    Press Keys    generate    ENTER
ปิด Browser
    Close Browser
