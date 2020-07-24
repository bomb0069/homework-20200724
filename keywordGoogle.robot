*** Settings ***
Library          SeleniumLibrary

*** Variables ***
${URL}    http://www.google.co.th

*** Keywords ***
ค้นหา ใน Google ผ่าน Chrome
    [Arguments]    ${SEARCH_TEXT}
    ค้นหา    ${SEARCH_TEXT}
    คลิ๊กปุ่ม search
    ดูผลลัพธ์จากการค้นหา
    Click ลิ้งค์แรก

เปิด google chrome เข้าเว็บ google.co.th
    Open Browser    ${URL}    Chrome

ค้นหา
    [Arguments]    ${SEARCH_TEXT}
    Input Text     q    ${SEARCH_TEXT}

คลิ๊กปุ่ม search
    Press Keys    q    RETURN

ดูผลลัพธ์จากการค้นหา
    # [Arguments]    ${SEARCH_TEXT}
    Wait Until Page Contains    การตั้งค่า    20
    # Page Should Contain     ${SEARCH_TEXT}

Click ลิ้งค์แรก
    # ${count} =    Get Element Count    //div[@class="r"] //a
    # Should Be True    ${count} == 2
    # Click Link    //div[@class="r"] //a
    Click Element    class:g
    
ปิดหน้าต่าง
    Close Browser