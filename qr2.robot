*** Settings ***
Resource    keywords.robot
Test Setup  เปิด Google Chrome เข้าลิงก์ https://qifi.org/
Test Template   สร้าง QR Code
Test Teardown   ปิด Browser

*** Test Cases ***          SSID      Key
สร้าง QR Code 1               9396      999        
สร้าง QR Code 2               1234      111                    