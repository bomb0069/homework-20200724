*** Settings ***
Library    SeleniumLibrary
Test Setup    เปิดเว็ปไซต์โครม
Test Template    Google-search-chrome
Test Teardown    ปิดBrowser


*** Variables ***
${URL}    http://www.google.co.th

*** Test Cases ***    SEARCH_TEXT
Google-search-chrome    อร่อย
Google-search-chrome    เผ็ดมาก

# Google-search
#     Google-search-chrome    อร่อย

# Google-search-เผ็ดมาก
#     ค้นหาคำว่า    เผ็ดมาก
#     คลิกปุ่มค้นหา
#     คลิกลิ้งค์แรกที่เจอ

*** Keywords ***
Google-search-chrome
    [Arguments]    ${SEARCH_TEXT}
    ค้นหาคำว่า    ${SEARCH_TEXT}
    คลิกปุ่มค้นหา
    คลิกลิ้งค์แรกที่เจอ

เปิดเว็ปไซต์โครม
    Open Browser    ${URL}    chrome

ค้นหาคำว่า
    [Arguments]    ${SEARCH_TEXT}
    Input Text    q    ${SEARCH_TEXT}

คลิกปุ่มค้นหา
    Press Keys    q    RETURN

คลิกลิ้งค์แรกที่เจอ
    Click Link    //div[@class="r"]//a
    # Click Element    class:g

ปิดBrowser
    Close Browser