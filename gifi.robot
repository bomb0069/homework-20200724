*** Settings ***
Library    SeleniumLibrary
Resource    keywords.robot
Test Setup    Open Chrome Browser
Test Template    Input text and generate qr code
Test Teardown    Close Chrome Browser

*** Variables ***
${URL}    https://qifi.org/

*** Test Cases ***                   ${SSID_TEXT}     ${KEY_TEXT}
#tag Test Cases
Input text and generate qr code      neeyalioness     1122334455