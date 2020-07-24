*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://google.co.th

*** Keywords ***
ค้นหาบน Google ผ่าน Chrome
    [Arguments]    ${SEARCH_TEXT}
    ค้นหา    ${SEARCH_TEXT}
    กดEnter
    คลิกลิ้งแรกที่เจอ
เปิดchromeขึ้นมา
    Open Browser    ${URL}    chrome
ค้นหา
    [Arguments]    ${SEARCH_TEXT}
    Input Text    q    ${SEARCH_TEXT}
กดEnter
    Press Keys    q    RETURN
คลิกลิ้งแรกที่เจอ
    Click Link    //div[@class="r"]//a
ปิดbrowser
    Close Browser