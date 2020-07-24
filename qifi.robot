*** Settings ***
Resource   keyword.robot
Library    SeleniumLibrary
Test Setup    เปิดGoogleChromeเข้าลิงก์ 
Test Template      การสร้าง QR Code
Test Teardown    ปิด Browser


*** Test Cases ***      ${SSID}     ${Key}
การสร้าง QR Code          kkkkanun   1111111
การสร้าง QR Code          1111111    2222222

   
