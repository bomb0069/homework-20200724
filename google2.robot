*** Settings ***
Resource    keyword.robot
Test Setup    เข้าเว็ป google.co.th
Test Template    ค้นหาบน-Google-Chrome
Test Teardown    ปิด บราวเซอร์

*** Variables ***
${URL}    http://www.google.co.th 
 

*** Test Cases ***       SEARCHTEXT
ค้นหาบน-Google-Chrome    Beck
ค้นหาบน-Google-Chrome    อิอิ

