*** Settings ***
Library     Selenium2Library


*** Variables ***
${URL}          http://www.google.com
${QIFI URL}     https://qifi.org/


*** Keywords ***
ค้นหาบน Google ผ่าน Chrome
    [Arguments]        ${KEYWORD}
    ใส่คำที่ใช้ค้นหา        ${KEYWORD}
    กดปุ่มค้นหา
    คลิ้กลิงค์แรกที่เจอ

เปิด Chrome เข้า google.com
    Open Browser    ${URL}    Chrome
    
ใส่คำที่ใช้ค้นหา      
    [Arguments]     ${KEYWORD}
    Input Text      q     ${KEYWORD} 

กดปุ่มค้นหา                
    Click Button    btnK
    Wait Until Page Contains    ผลการค้นหา

คลิ้กลิงค์แรกที่เจอ
    Click Element      //div[@class="r"]//a
    Wait Until Location Does Not Contain    google

ปิด Chrome
    Close Browser

Generate QR Wifi โดย https://qifi.org/ ผ่าน Chrome
    [Arguments]     ${SSID}     ${PASSWORD}
    ใส่ SSID         ${SSID}
    ใส่ Key          ${PASSWORD}
    กดปุ่มGenerate  
    เช็ค QR

เปิด Chrome เข้า https://qifi.org/
    Open Browser    https://qifi.org/   Chrome

ใส่ SSID
    [Arguments]     ${SSID}
    Input Text      ssid        ${SSID}

ใส่ Key
    [Arguments]     ${PASSWORD}
    Input Text      key      ${PASSWORD}

กดปุ่มGenerate               
    Click Button    generate  

เช็ค QR
    Wait Until Page Contains Element    id:qrcode