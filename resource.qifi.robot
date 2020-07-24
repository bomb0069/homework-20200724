*** Variables ***
${URL}    https://qifi.org/

***Keywords***
เปิดเบราว์เซอร์ และเข้า https://qifi.org/
    Open Browser    ${URL}    gc
กรอก SSID
    [Arguments]    ${SSID}
    Input Text     ssid       ${SSID}
กรอก Password
    [Arguments]       ${PASSWORD}
    Input Password    key            ${PASSWORD}
กดปุ่มสร้าง QR Code
    Press Keys    None    RETURN
Check QR Code
    Wait Until Element Is Visible    //*[@id="qrcode"]/canvas
Generate WiFi QR Code
    [Arguments]                                  ${SSID}        ${PASSWORD}
    กรอก SSID                                    ${SSID}
    กรอก Password                                ${PASSWORD}
    กดปุ่มสร้าง QR Code
    Check QR Code