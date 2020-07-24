*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://www.google.co.th

*** Keywords ***
เปิด Google ด้วย Google Chrome
    Open Browser    ${URL}    chrome
ค้นหา
    [Arguments]    ${SEARCH_TEXT}
    Input Text    q    ${SEARCH_TEXT}
กด Enter เพื่อค้นหา
    Press Keys    q    RETURN
ดูผลการค้นหา
    [Arguments]    ${SEARCH_TEXT}
    Title Should Be    ${SEARCH_TEXT} - ค้นหาด้วย Google
    Element Should Contain    rso    ${SEARCH_TEXT}
คลิกที่ลิงค์แรก
    Click Element    //div[@class="r"]//a
ปิด Google Chrome
    Close Browser
ค้นหาบน Google ผ่าน Chrome
    [Arguments]    ${SEARCH_TEXT}
    ค้นหา    ${SEARCH_TEXT}
    กด Enter เพื่อค้นหา
    ดูผลการค้นหา    ${SEARCH_TEXT}
    คลิกที่ลิงค์แรก