*** Settings ***
Resource    keywords.robot
Test Setup    Open Google in Google Chrome
Test Template    ค้นหาบน google ผ่าน Google Chrome
Test Teardown    Close Google Chrome

*** Test Cases ***                       SEARCH_TEXT
ค้นหา BNK48 ใน google ผ่าน Google Chrome    BNK48
ค้นหา Izone ใน google ผ่าน Google Chrome    Izone
     
