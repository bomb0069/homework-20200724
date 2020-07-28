*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://www.google.co.th

*** Keywords ***
ค้นหาบน Google ผ่าน chrome
    [Arguments]    ${SEARCH_TEXT}
    ค้นหา    ${SEARCH_TEXT}
    กด Enter 
    จะต้องพบ    ${SEARCH_TEXT}
    คลิกเลือก link แรก

เปิด chrome browser ขึ้นมา เข้า url google.co.th
    Open Browser    ${URL}    chrome

ค้นหา
    [Arguments]    ${SEARCH_TEXT}
    Input Text     q                 ${SEARCH_TEXT}

กด Enter
    Press Keys    q    RETURN

จะต้องพบ
    [Arguments]    ${SEARCH_TEXT}
    Wait Until Page Contains    ${SEARCH_TEXT}    3

คลิกเลือก link แรก
    # ${count} =    Get Element Count    //div[@class="r"]//a
    # Should Be True    ${count} == 0
    Click Link    //div[@class="r"]//a

ปิดหน้าเว็บ
    Close Browser
