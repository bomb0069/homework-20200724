*** Variables ***
${URL}    http://www.google.co.th

*** Keywords ***
ค้นหาผ่าน chrome
    [Arguments]    ${SEARCH_TEXT}
    ค้นหาคำว่า    ${SEARCH_TEXT}
    กดปุ่มค้นหา
    คลิ๊ก link แรกที่เจอ

เปิด google.co.th ใน chrome
    Open Browser    ${URL}    Chrome

ค้นหาคำว่า 
    [Arguments]    ${SEARCH_TEXT}
    Input Text     q    ${SEARCH_TEXT}

กดปุ่มค้นหา 
    Submit Form

# รอจนเปลี่ยนผลการค้นหา
#     Wait Until Page Contains    ก๋วยเตี๋ยวเส้นเล็กน้ำใส
#     Page Should Contain    ก๋วยเตี๋ยวเส้นเล็กน้ำใส

คลิ๊ก link แรกที่เจอ
    Click Element    class:r

ปิด Browser
    Close Browser  