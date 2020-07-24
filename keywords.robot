*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL}      http://www.google.com
${QR}       https://qifi.org/

*** Keywords ***
ค้นหาบน Google Chrome     
    [Arguments]     ${SEARCH_TEXT}
    พิมพ์ keyword ที่ต้องการค้นหา     ${SEARCH_TEXT}
    กดค้นหา
    กดเข้า link แรกที่เจอ เพื่อดูข้อมูล
เปิด Google Chrome เข้าลิงก์ www.google.co.th
    Open Browser    ${URL}          chrome
พิมพ์ keyword ที่ต้องการค้นหา   
    [Arguments]     ${SEARCH_TEXT}
    Input Text      q               ${SEARCH_TEXT}
กดค้นหา    
    Press Keys      q               RETURN
กดเข้า link แรกที่เจอ เพื่อดูข้อมูล
    # &{count} =      Get Element Count
    # Should Be True  ${count} == 0
    Click Element   class:r
ปิด Browser
    Close Browser


# QR Code
สร้าง QR Code 
    [Arguments]     ${SSID}     ${Key}
    ใส่ SSID         ${SSID} 
    ใส่ Key          ${Key}
    กด Generate และแสดง QR Code
เปิด Google Chrome เข้าลิงก์ https://qifi.org/
    Open Browser    ${QR}   chrome
ใส่ SSID
    [Arguments]     ${SSID}
    Input Text      ssid        ${SSID}
    Press Keys      ssid        RETURN
ใส่ Key
    [Arguments]     ${Key}
    Input Text      key         ${Key}
    Press Keys      key        RETURN
กด Generate และแสดง QR Code
    Click Element   generate
    Element Should Be Enabled    id:qrcode