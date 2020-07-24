*** Settings ***
Resource    Keyws-Var-Lib-QIFI.robot
Test Setup    เปิดเว็บ qifi ด้วย Chrome browser
Test Template    สร้าง QRCode ด้วย id และ key
Test Teardown    ปิด Browser

*** Test Cases ***                 |ID|              |Key|
Testcase การสร้าง QRcode - 01    Hello-AZ-2020       P@sSVV0Rd
Testcase การสร้าง QRcode - 01    Hello-AZ-2020..2    P@sSVV0Rd..2
