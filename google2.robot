*** Settings ***
Resource    keyword.robot 
Test Setup    เปิด google chrome ขึ้นมา
Test Template    ค้นหาบน google ผ่าน chrome    
Test Teardown    ปิดหน้าเว็บ

*** Test Cases ***                  
ค้นหา ข้าวมันไก่ บน google ผ่าน chrome    ข้าวมันไก่
ค้นหา พิซซ่า บน google ผ่าน chrome    พิซซ่า
    

 

    
