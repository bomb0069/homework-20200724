*** Variables ***
${URL}    http://www.google.co.th
*** Settings ***
Resource    keywords.robot
Library    SeleniumLibrary
Test Setup    เปิด Browser
Test Template    ค้นหาบน Google ผ่าน Chrome
Test Teardown    ปิดหน้าต่าง
*** Test Cases ***               SEARCH_TEXT
ค้นหารังนกบน Google ผ่าน Chrome    รังนก
ค้นหานกบน Google ผ่าน Chrome    นก