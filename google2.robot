*** Settings ***
Resource    keywords.robot
Test Setup  เปิด Google Chrome เข้าลิงก์ www.google.co.th
Test Template   ค้นหาบน Google Chrome
Test Teardown   ปิด Browser

*** Test Cases ***                  SEARCH_TEXT
ค้นหา stitch บน Google Chrome        stitch 
ค้นหา bonchon บน Google Chrome       bonchon