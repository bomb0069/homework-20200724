*** Keywords ***
Input text and generate qr code
    [Arguments]    ${SSID_TEXT}     ${KEY_TEXT}
    Input text : ในช่อง SSID   ${SSID_TEXT}
    Input text : ในช่อง Key    ${KEY_TEXT}
    กดปุ่ม Generate!
    Show QR Code

Open Chrome Browser
    Open Browser    ${URL}    chrome

Input text : ในช่อง SSID
    [Arguments]   ${SSID_TEXT}
    Input Text    ssid    ${SSID_TEXT}

Input text : ในช่อง Key
    [Arguments]   ${KEY_TEXT}
    Input Text    key    ${KEY_TEXT} 

กดปุ่ม Generate!
    Click Button    generate
Show QR Code
    Element Should Be Enabled    id:qrcode
Close Chrome Browser
    Close Browser