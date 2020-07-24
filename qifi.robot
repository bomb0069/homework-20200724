*** Settings ***
Resource    qifi-keyword.robot
Test Setup  เข้า qifi ใน Browser
Test Template    กรอกอินพุด
# Test Teardown    Close

*** Variables ***
${URL}    https://qifi.org/


*** Test Cases ***
กรอกอินพุด     beckky    beck
    
