*** Keywords ***
ค้นหาบน google ผ่าน chrome
    [Arguments]    ${SEARCH_TEXT}
    ค้นหา   ${SEARCH_TEXT}
    กดปุ่มค้นหา
    คลิ้กที่ลิงค์แรกที่เจอ


เปิด google.co.th ใน Chrome ขึ้นมา
    Open Browser    ${URL}    chrome

ค้นหา 
    #รับตัวแปร
    [Arguments]    ${SEARCH_TEXT} 
    input Text    q    ${SEARCH_TEXT}

กดปุ่มค้นหา
    Press Keys    q    RETURN

คลิ้กที่ลิงค์แรกที่เจอ
    Click Element    //div[@class="r"]//a

ปิด Browser
    Close Browser