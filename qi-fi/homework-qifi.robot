*** Settings ***
Resource    keywords-qifi.robot
Test Setup    เปิดเว็บ Generate
Test Template    ทดสอบการ Generate QR code สำหรับเข้า Wi-fi 
Test Teardown    ปิด Browser


*** Test Cases ***                                    WIFI_ID       WIFI_PASSWORD
ทดสอบการ Generate QR code สำหรับเข้า Wi-fi : wattana    wattana-wifi    5555
    
   
    

