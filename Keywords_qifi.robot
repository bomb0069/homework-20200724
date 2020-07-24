
*** Settings ***
Library         SeleniumLibrary
    
*** Keywords ***
ทดสอบการกรอกรหัส
    # Test Setup      เปิดบราวเซอร์
    [Arguments]                         ${text1}    ${text2}
    wifi ssid                           ${text1}   
    wifi key                                        ${text2}   
    กดปุ่ม Generate โดยการ Enter
    รอการแสดง QR Code
    # Test Teardown   ปิดบราวเซอร์

เปิดบราวเซอร์                 Open Browser                 https://qifi.org/           chrome
wifi ssid  
    [Arguments]                         ${text1}                
    Input Text                   ssid                        ${text1}    
wifi key                   
    [Arguments]                         ${text2}
    Input Text                   key                         ${text2}    

กดปุ่ม Generate โดยการ Enter  Press Keys                  //*[@id="generate"]         ENTER
รอการแสดง QR Code           Element Should Be Enabled   //*[@id="qrcode"]/canvas
ปิดบราวเซอร์                  Close Browser