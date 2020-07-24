
*** Settings ***
Library    SeleniumLibrary


*** Keywords ***

ค้นหาบน Google Chrome
    [Arguments]    ${SEARCH_TERM}
    ค้นหา    ${SEARCH_TERM}
    Press enter ที่ช่องค้นหา เพื่อค้นหา
    รอคำว่า    ${SEARCH_TERM}
    คลิก link แรก

ค้นหา
    [Arguments]    ${SEARCH_TEXT}
    Input Text    q    ${SEARCH_TEXT}

เปิด Browser แล้วไปที่ https://google.com
    Open Browser    ${URL}    chrome

Press enter ที่ช่องค้นหา เพื่อค้นหา
    Press Keys    q    RETURN
รอคำว่า
    [Arguments]    ${KEYWORD}
    Wait Until Page Contains    ${KEYWORD}
คลิก link แรก
    Click Link    //div[@class="r"]//a

