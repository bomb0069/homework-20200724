*** Settings **
Library    SeleniumLibrary
Test Setup     เปิด Browser 
Test Template    ใช้งานเว็บ ผ่าน Chrome
Test Teardown    ปิด Chrome

*** Variables ***
${URL}    https://qifi.org/

*** Test Cases ***                      SSID        KEY                   
ส้ราง qr code ผ่านเว็บ https://qifi.org/    boy         12345
   
    
*** Keywords ***
ใช้งานเว็บ ผ่าน Chrome
    [Arguments]    ${SSID}    ${KEY}
    กรอก SSID     ${SSID}    
    กรอก key     ${KEY} 
    กดปุ่ม Display key
    key ต้องมองเห็น
    กดปุ่ม generate
    รอการแสดง QR code


เปิด Browser
    Open Browser    ${URL}    chrome
กรอก SSID 
    [Arguments]    ${SSID}
    Input Text    ssid     ${SSID}
กรอก key 
    [Arguments]    ${KEY}
    Input Text    key    ${KEY}
    
กดปุ่ม Display key
    Click Button    display-key

key ต้องมองเห็น
    Element Should Be Visible     key

กดปุ่ม generate
    Click Button    generate

รอการแสดง QR code
    Wait Until Page Contains    qrcode

ปิด Chrome
    Close Browser