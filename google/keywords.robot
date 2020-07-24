*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://www.Google.co.th

*** Keywords ***
ค้นหาบน Google ผ่าน chrome
    [Arguments]    ${SEARCH_TEXT}
    ค้นหา    ${SEARCH_TEXT}
    กดปุ่มค้นหา
    เลือกเว็บไซต์แรก

เปิด Google chrome
    Open Browser    ${URL}    chrome

ค้นหา
    [Arguments]    ${SEARCH_TEXT}
    Input Text    q    ${SEARCH_TEXT}

กดปุ่มค้นหา 
    Press Keys    q    RETURN

เลือกเว็บไซต์แรก
    Click Element    class:g
    #Click Link    //div[@class="r"]//a

ปิด Google chrome
    Close Browser