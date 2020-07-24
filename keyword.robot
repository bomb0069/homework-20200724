**** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://www.google.co.th 
 


*** Keywords ***
ค้นหาบน-Google-Chrome
    [Arguments]    ${SEARCHTEXT}
    ค้นหา    ${SEARCHTEXT}
    กด Enter ในการยืนยันการค้นหา
    นำเม้าส์ไปคลิกที่ลิ้งค์แรกที่โผล่ขึ้นมา
    


เข้าเว็ป google.co.th
    Open Browser    ${URL}    Chrome

ค้นหา
    [Arguments]    ${SEARCHTEXT}
    Input Text    q    ${SEARCHTEXT}

กด Enter ในการยืนยันการค้นหา
    Press Keys    q    RETURN

นำเม้าส์ไปคลิกที่ลิ้งค์แรกที่โผล่ขึ้นมา
    Click Element    //div[@class="r"]//a

ปิด บราวเซอร์
    Close Browser
