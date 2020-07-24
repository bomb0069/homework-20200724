*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://qifi.org/
   
*** Keywords ***
ทดสอบการ Generate QR code สำหรับเข้า Wi-fi
    [Arguments]    ${WIFI_ID}    ${WIFI_PW}
    พิมพ์ชื่อ Wi-fi    ${WIFI_ID}
    พิมพ์รหัส Wi-fi    ${WIFI_PW}
    กด Generate
    รอจนมี qr code ขึ้นมา

เปิดเว็บ Generate
    Open Browser    ${URL}    chrome
พิมพ์ชื่อ Wi-fi
    [Arguments]    ${WIFI_ID} 
    Input Text    ssid    ${WIFI_ID} 
พิมพ์รหัส Wi-fi
    [Arguments]    ${WIFI_PW} 
    Input Text    key    ${WIFI_PW}
กด Generate
    Press Keys    generate    ENTER
รอจนมี qr code ขึ้นมา
    Wait Until Element Is Visible     id:qrcode
ปิด Browser
    Close Browser