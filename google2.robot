*** Settings ***
Library    SeleniumLibrary
Test Setup     เปิดโครมขึ้นมา
Test Template    ค้นหาบน google ผ่าน Chrome
Test Teardown    เสร็จสิ้น

*** Variables ***
${URL}    http://google.co.th

*** Test Cases ***            SEARCH_TEXT
ค้นหาบน google ผ่าน Chrome      ขนม
ค้นหาบน google ผ่าน Chrome      นม
    
    

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
