*** Settings ***
Resource    keywords.robot
Test Setup    เปิด Google chrome
Test Template    ค้นหาบน Google ผ่าน chrome
Test Teardown    ปิด Google chrome

*** Test Cases ***                      SEARCH_TEXT
ค้นหา เที่ยวฮ่องกง บน Google ผ่าน chrome    เที่ยวฮ่องกง
ค้นหา อาหารไทย บน Google ผ่าน chrome    อาหารไทย
