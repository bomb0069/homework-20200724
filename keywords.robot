*** Variables ***
${URL}    http://www.google.co.th

*** Keywords ***
ค้นหาเปิด Google Chrome 
    [Arguments]    ${SEARCH_TEXT}
    ค้นหา    ${SEARCH_TEXT}
    กด enter
    คลิ๊กลิ้งแรกที่เจอ
เปิดโครมเข้าไปที่ www.google.co.th
    Open Browser    ${URL}    chrome
ค้นหา 
    [Arguments]    ${SEARCH_TEXT}
    Input Text    q    ${SEARCH_TEXT}    
กด enter
    Submit Form
คลิ๊กลิ้งแรกที่เจอ
    Click Link    //div[@class="r"]//a
ปิดหน้าเว็บ
    Close Browser
