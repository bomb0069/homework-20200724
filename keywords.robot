*** Settings ***
Library    SeleniumLibrary



*** Keywords ***
ค้นหาบน Google ผ่าน Chrome
    [Arguments]    ${SEARCH_TEXT}
    ค้นหา    ${SEARCH_TEXT}
    คลิกปุ่มค้นหา
    คลิก link แรกที่เจอ

Generate QR code
    [Arguments]    ${SSID_TEXT}    ${KEY_TEXT}
    ใส่ SSID    ${SSID_TEXT}
    ใส่ Key    ${KEY_TEXT}
    กด Generate
    เช็ค QR code

เปิดโครมขึ้นมา
    Open Browser    ${URL}    chrome

ค้นหา
    [Arguments]    ${SEARCH_TEXT}
    Input Text    q    ${SEARCH_TEXT}

# ค้นหา บิงซูมะม่วง
    # Input Text    q    บิงซูมะม่วง

คลิกปุ่มค้นหา
    Press Keys    q    RETURN

# จะต้องพบคำว่า บิงซูมะม่วง ในผลลัพธ์
    # Page Should Contain    บิงซูมะม่วง

คลิก link แรกที่เจอ
    Click Element    class:g

# คลิก link แรกที่เจอ
    # Click Element    //*[@id="rso"]/div[3]/div/div[1]/a/h3

# คลิก link ก๋วยเตี๋ยว
    # Click Element    //*[@id="rso"]/div[3]/div/div[1]/a

ปิด Browser
    Close Browser

เปิดเว็บขึ้นมา
    Open Browser    https://qifi.org/    Chrome

ใส่ SSID
    [Arguments]    ${SSID_TEXT}
    Input Text    ssid    ${SSID_TEXT}

ใส่ Key
    [Arguments]    ${KEY_TEXT}
    Input Text    key    ${KEY_TEXT}

กด Generate
    Press keys    generate    ENTER

เช็ค QR code
    Page Should Contain Element    id:qrcode

