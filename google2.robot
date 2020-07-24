*** Settings ***
Library    SeleniumLibrary
Resource    ggkeywords.robot
Test Setup    Open Chrome Browser
Test Template    ค้นหา on Google via Chrome
Test Teardown    ปิดเบราว์เซอร์ลงไป
#Suite Teardown    Close Browser

*** Variables ***
${URL}    http://Google.co.th

#tag Test Cases 
*** Test Cases ***    SEARCH_TEXT
ค้นหา neeyalioness     neeyalioness
ค้นหา instagram        instagram