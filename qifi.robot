*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
qifi test
    open qifi link
    ใส่ ssid
    ใส่key
    กดgen
    check qr code
    ปิดหน้าเว็บ
    

*** Keywords ***
open qifi link
    Open Browser    https://qifi.org/    chrome
ใส่ ssid
    Input Text    ssid    kerati 
ใส่key
    Input Text    key    kasisuwan
กดgen
    Press keys    generate    ENTER
check qr code
    Wait Until Element Is Enabled    id:qrcode    
ปิดหน้าเว็บ
    Close Browser