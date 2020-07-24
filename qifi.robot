*** Settings ***
Resource    keywordqifi.robot
Test Template  การสร้าง QR Code  
Test Setup    เปิด qifi web Browser ขึ้นมา
Test Teardown    ปิด Browser



*** Test Cases ***    ${SSID}    ${Key}
การสร้าง QR Code    ppaallmm    88888888









