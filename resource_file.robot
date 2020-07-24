*** Variables ***
${DEFAULT_BROWSER}    chrome
${ENTER_BUTTON}    RETURN

*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
เปิด
    [Arguments]    ${URL}    ${BROWSER}=${DEFAULT_BROWSER}
    Open Browser    ${URL}    ${BROWSER}
ค้นหา 
    [Arguments]    ${SEARCH_KEYWORD}
    Input Text    q   ${SEARCH_KEYWORD}
กดปุ่ม
    [Arguments]    ${ENTER_BUTTON}
    Press Keys    q    ${ENTER_BUTTON}
ในหัวข้อจะต้องมีคำว่า
    [Arguments]    ${SEARCH_KEYWORD}
    Title Should Be    ${SEARCH_KEYWORD} - ค้นหาด้วย Google
คลิก link แรกที่เจอ
    Click Link    //div[@class="r"]//a
รอเป็นเวลา (วินาที)
    [Arguments]    ${WAIT_SEC}
    Sleep    ${WAIT_SEC}
รอจนเพจมีคำว่า
    [Arguments]    ${SEARCH_KEYWORD}
    Wait Until Page Contains    ${SEARCH_KEYWORD}
ปิด Browser
    Close Browser

Test Search
    [Arguments]    ${KEYWORD}    ${URL}=http://www.google.co.th
    ค้นหา    ${KEYWORD}
    กดปุ่ม    ${ENTER_BUTTON}
    ในหัวข้อจะต้องมีคำว่า    ${KEYWORD}
    คลิก link แรกที่เจอ
    รอจนเพจมีคำว่า    ${KEYWORD}

# qifi
เปิด Google Chrome แล้วเข้า URL qifi.org
    Open Browser    https://qifi.org    gc
พิมพ์ Test-Wifi ที่ต้องการค้นหาลงในช่อง SSID
    Input Text    ssid   Test-Wifi
พิมพ์ 123456 ที่ต้องการค้นหาลงในช่อง Key
    Input Text    key   123456
คลิก Generate
    Click Button    generate
เช็ค QR Code
    Page Should Contain Element    id:qrcode

Test QR Code
    พิมพ์ Test-Wifi ที่ต้องการค้นหาลงในช่อง SSID
    พิมพ์ 123456 ที่ต้องการค้นหาลงในช่อง Key
    คลิก Generate
    เช็ค QR Code
