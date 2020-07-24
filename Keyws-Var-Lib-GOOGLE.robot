*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${GoogleURL}    http://www.google.co.th

*** Keywords ***
ค้นหา link แรก บน Google ด้วย Chrome browser
    [Arguments]    ${Searching_text}
    พิมพ์ข้อความที่ต้องการในช่องค้นหาว่า    ${Searching_text}
    กดปุ่ม Enter บน keyboard
    คลิกที่ link แรกที่ปรากฎ เพื่อสืบค้นข้อมูลต่อไป

พิมพ์ข้อความที่ต้องการในช่องค้นหาว่า
    [Arguments]    ${Searching_text}
    Input Text    q    ${Searching_text}
เปิด chrome ขึ้นมา
    Open Browser    ${GoogleURL}    chrome
พิมพ์ข้อความที่ต้องการ search ว่า กีต้าร์ ในช่องค้นหา
    Input Text    q    กีต้าร์
กดปุ่ม Enter บน keyboard
    Press Keys    None    RETURN
คลิกที่ link แรกที่ปรากฎ เพื่อสืบค้นข้อมูลต่อไป
    Click Element    xpath: //div[@class="r"]//a
ปิด Chrome Browser
    Close Browser