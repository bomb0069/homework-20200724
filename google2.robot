*** Settings ***
Resource    keywords.robot
Test Setup    เปิดโครมขึ้นมา
Test Template    ค้นหาบน Google ผ่าน Chrome
Test Teardown    ปิด Browser

*** Variables ***
${URL}      http://google.co.th


*** Test Cases ***                    SEARCH_TEXT
ค้นหา บิงซูมะม่วง ใน Google ผ่าน Chrome    บิงซูมะม่วง
ค้นหา ก๋วยเตี๋ยว ใน Google ผ่าน Chrome    ก๋วยเตี๋ยว
    


