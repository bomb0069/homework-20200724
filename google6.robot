*** Settings ***
Resource    keyword.robot
Test Setup    เปิดchromeขึ้นมา
Test Template    ค้นหาบน Google ผ่าน Chrome
Test Teardown    ปิดbrowser

*** Test Cases ***                  SEARCH_TEXT
ค้นหา กาแฟ ใน Google ผ่าน Chrome     กาแฟ
ค้นหา ชา ใน Google ผ่าน Chrome        ชา
