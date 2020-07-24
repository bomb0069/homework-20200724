*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://www.google.co.th

*** Keywords ***
ค้นหาบน Google ผ่าน Chrome
    [Arguments]    ${SEARCH_TEXT}
    ใส่ข้อความค้นหา    ${SEARCH_TEXT}
    กดปุ่ม Enter เพื่อค้นหา    ${SEARCH_TEXT} - ค้นหาด้วย Google
    คลิกเข้าที่ผลค้นหาอันแรก

เปิดกูเกิลโครมขึ้นมา เข้า URL google.co.th
    Open Browser    ${URL}    chrome

ใส่ข้อความค้นหา
    [Arguments]    ${SEARCH_TEXT}
    Input Text    q    ${SEARCH_TEXT}

กดปุ่ม Enter เพื่อค้นหา
    [Arguments]    ${TITLE}
    Press Keys         q                                 RETURN
    Title Should Be    ${TITLE}

คลิกเข้าที่ผลค้นหาอันแรก
    Click Link    //div[@class="r"]//a

ปิด
    Close Browser