*** Settings ***
Resource    QrResource.robot
Test Template    ใส่ username และ password เพื่อ generate
Test Setup    เปิด Browser แล้วไปที่ https://qifi.org/
Suite Teardown    Close Browser




*** Test Cases ***       USERNAME          PASSWORD
Generate QR Test With    natthawit-wifi    12345678
    
            

