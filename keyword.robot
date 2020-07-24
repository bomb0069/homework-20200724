*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}   http://google.co.th

*** Keywords ***
ค้นหาบน google ผ่าน chrome
    [Arguments]    ${SERCH_TEXT}
    ค้นหา    ${SERCH_TEXT}
    จะแสดงหน้าจอผลลัพธ์ของคำที่ค้นหาลงไป
    คลิ๊กที่ link แรกที่เจอ
เปิด google chrome ขึ้นมา
    Open Browser    ${URL}     chrome
ค้นหา
    [Arguments]    ${SERCH_TEXT}
    Input Text    q    ${SERCH_TEXT} 
จะแสดงหน้าจอผลลัพธ์ของคำที่ค้นหาลงไป
    Press Keys    q    RETURN
คลิ๊กที่ link แรกที่เจอ
    Click Element    //div[@class="r"]//a
ปิดหน้าเว็บ
    Close Browser