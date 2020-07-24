*** Settings ***
Resource    keywords-qifi.robot
Test Setup    เปิดเว็บ Generate
Test Template    ทดสอบการ Generate QR code สำหรับเข้า Wi-fi 
Test Teardown    ปิด Browser


*** Test Cases ***
ทดสอบการ Generate QR code สำหรับเข้า Wi-fi : wattana    wattana-wifi    5555
    
   
    

