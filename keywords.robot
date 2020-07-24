*** Variables ***
${URL}    http://www.google.co.th

*** Keywords ***
ค้นหาบน Google ผ่าน Chrome
    [Arguments]    ${SEARCH_TEXT}
    ค้นหา    ${SEARCH_TEXT}
    คลิกปุ่มค้นหา
    เจอคำค้นหาในหน้าเว็ป    ${SEARCH_TEXT}
    คลิกลิงก์แรกที่ค้นหาเจอ ver2

เปิดเว็ปด้วย Google Chrome
    Open Browser    ${URL}    chrome
ค้นหา
    [Arguments]    ${SEARCH_TEXT}
    Input Text    q    ${SEARCH_TEXT}
คลิกปุ่มค้นหา
    Press Keys    q    RETURN
เจอคำค้นหาในหน้าเว็ป
    [Arguments]    ${FOUND_TEXT}
    Wait Until Page Contains    ${FOUND_TEXT}    3
คลิกลิงก์แรกที่ค้นหาเจอ
    Click Element    //*[@id="rso"]/div[1]/div/div[1]/a/h3
คลิกลิงก์แรกที่ค้นหาเจอ ver2
    ${count} =    Get Element Count    //div[@class="r"]//a
    Should Be True    ${count} > 2
    Click Link    //div[@class="r"]//a
ปิดเว็ป
    Close Browser