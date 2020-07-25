*** Settings ***
Library    SeleniumLibrary
Resource    keywords.robot
Test Setup    เปิดเว็ปไซต์qifi.orgจากโครม
Test Template    Qifi
Test Teardown    ปิด

*** Variables ***
${URL}    https://qifi.org/

*** Test Cases ***    INPUT_TEXT_SSID INPUT_TEXT_KEY
Qifi    1111    2222
