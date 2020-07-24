*** Settings ***
Resource    Keyws-Var-Lib-GOOGLE.robot
Test Setup    เปิด chrome ขึ้นมา
Test Template    ค้นหา link แรก บน Google ด้วย Chrome browser
Test Teardown    ปิด Chrome Browser

*** Test Cases ***                      |Instrument|
Google searching testing - 01               กีต้าร์
Google searching testing - 02               กลองชุด
