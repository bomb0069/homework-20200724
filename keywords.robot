*** Variables ***
${URL}    https://www.google.co.th
${URL-qifi}    https://qifi.org/

*** Keywords ***
เปิดโครมขึ้นมา
    Open Browser    ${URL}    chrome

เปิดโครมขึ้นมา-qifi
    Open Browser    ${URL-qifi}    chrome

ค้นหา google ผ่าน chrome
    [Arguments]    ${SEARCH_TEXT}
    Input Text    q    ${SEARCH_TEXT} 
    Press Keys    q    RETURN
    Click Link    //div[@class="r"]//a

ปิดบราวเซอร์
    Close Browser

สร้างqrcode
    [Arguments]    ${SSID}    ${key}
    Input Text    ssid    ${SSID}
    Input Text    key    ${key}
    Press Keys    generate    RETURN
    Wait Until Page Contains Element    id:qrcode