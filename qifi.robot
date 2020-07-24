*** Settings ***
Resource        Keywords_qifi.robot
Test Setup      เปิดบราวเซอร์
Test Template   ทดสอบการกรอกรหัส 
# Test Teardown   ปิดบราวเซอร์

*** Variables ***
${url}          https://qifi.org/

*** Test Cases ***
ทดสอบการกรอกรหัส          hello     12343       
