*** Variables ***
${URL}    https://www.google.co.th

*** Keywords ***
เปิดเบราว์เซอร์
    Open Browser    ${URL}    gc
กรอกข้อมูลในช่องค้นหา
    [Arguments]    ${SEARCH_TEXT}
    Input Text     q                 ${SEARCH_TEXT}
กดปุ่มค้นหา
    Press Keys    q    RETURN
หาคำค้นหาในหน้าที่ค้นหา
    Wait Until Element Is Visible    //*[@id="rso"]
กดลิงก์แรกที่เจอ
    Click Element    //div[@class="r"]/a
Go To Google.com
    Go To    https://www.google.co.th
ค้นหาบน Google ผ่าน Chrome
    [Arguments]                ${Keyword}
    กรอกข้อมูลในช่องค้นหา      ${Keyword}    
    กดปุ่มค้นหา
    หาคำค้นหาในหน้าที่ค้นหา
    กดลิงก์แรกที่เจอ