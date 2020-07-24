*** Variables ***
${URL}    http://google.co.th    

*** Keywords ***
เปิด google.com ใน chrome
    Open Browser    ${URL}    chrome
ค้นหา
    [Arguments]    ${SEARCH_TEXT}
    Input Text    q    ${SEARCH_TEXT}
    กดenter
    คลิ้กที่ลิงค์แรก
กดenter
    Press keys    q    ENTER
คลิ้กที่ลิงค์แรก
    Click Link    //div[@class="r"]//a
ปิดหน้าเว็บ
    Close Browser
check qifi qr
    ใส่ ssid
    ใส่key
    กดgen
    check qr code
open qifi link
    Open Browser    https://qifi.org/    chrome
    ใส่ ssid
    ใส่key
    กดgen
    check qr code
ใส่ ssid
    Input Text    ssid    kerati 
ใส่key
    Input Text    key    kasisuwan
กดgen
    Press keys    generate    ENTER
check qr code
    Wait Until Element Is Enabled    id:qrcode    
