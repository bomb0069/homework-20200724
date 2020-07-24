** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://www.qifi.org

*** Keywords ***
ไปยังเว็บไซต์ qifi.org
    Open Browser    ${URL}    chrome
กรอก SSID และ key 
    [Arguments]    ${SSID}    ${KEY}
    Input Text    ssid    ${SSID}
    Input Text    key    ${KEY}
กดปุ่ม Generate 
    Click Element    generate
check Qr Code
    Page Should Contain Element    export
ปิด Google chrome
    Close Browser