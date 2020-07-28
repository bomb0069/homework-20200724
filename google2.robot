*** Settings ***
Resource    keyword.robot
Test Setup    เปิด chrome browser ขึ้นมา เข้า url google.co.th
Test Template    ค้นหาบน Google ผ่าน chrome
Test Teardown    ปิดหน้าเว็บ 

*** Test Cases ***                         SEARCH_TEXT                
ค้นหา kasetsart ใน Google ผ่าน chrome        kasetsart   
ค้นหา chulalongkorn ใน Google ผ่าน chrome    chulalongkorn




