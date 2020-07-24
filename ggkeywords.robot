*** Keywords ***
ค้นหา on Google via Chrome
    [Arguments]    ${SEARCH_TEXT}
    พิมพ์คำค้นหา    ${SEARCH_TEXT}
    กดค้นหา
    คลิกที่ลิงค์แรกเสมอ 

Open Chrome Browser
    Open Browser    ${URL}    chrome

พิมพ์คำค้นหา
    [Arguments]    ${SEARCH_TEXT}
    Input Text     q    ${SEARCH_TEXT}    #Input Text <locator><value>

กดค้นหา
    Press Keys    q    RETURN

คลิกที่ลิงค์แรกเสมอ
    Click Element    class:g

ปิดเบราว์เซอร์ลงไป
    Close Browser
