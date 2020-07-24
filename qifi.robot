*** Settings ***
Library    SeleniumLibrary
Resource    Keyword.robot
Library    SeleniumLibrary
Test Setup    open qifi link
Test Template    check qifi qr    
Test Teardown    ปิดหน้าเว็บ

*** Test Cases ***
qifi test
    check qifi qr
