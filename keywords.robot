*** Settings **
Library    SeleniumLibrary


*** Variables ***
${URL}    http://www.google.co.th

*** Keywords ***
ค้นหา ใน Google ผ่าน Chrome
    [Arguments]    ${SEARCH_TEXT}
    พิมพ์คำที่ต้องการสืบค้นลงในช่อง search    ${SEARCH_TEXT}  
    กดปุ่ม google search หรือกด enter 
    ถ้าหาคำที่สืบค้นเจอ คลิกที่ link ที่จะเข้าชม

เปิด Browser
    Open Browser    ${URL}    chrome
พิมพ์คำที่ต้องการสืบค้นลงในช่อง search   
    [Arguments]    ${SEARCH_TEXT}
    Input Text    q    ${SEARCH_TEXT} 
กดปุ่ม google search หรือกด enter
    Press Keys    q    RETURN

ถ้าหาคำที่สืบค้นเจอ คลิกที่ link ที่จะเข้าชม
    Click Link    //div[@class="r"]//a
ปิด Chrome
    Close Browser