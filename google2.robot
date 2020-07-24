*** Settings ***
Resource         keywordGoogle.robot
Test Setup       เปิด google chrome เข้าเว็บ google.co.th
Test Template    ค้นหา ใน Google ผ่าน Chrome
Test Teardown    ปิดหน้าต่าง

*** Test Cases ***                                SEARCH_TEXT
ค้นหา กล้วยอบเนยโรยเกลือ ใน Google ผ่าน Chrome    กล้วยอบเนยโรยเกลือ
ค้นหา ถ้วย ใน Google ผ่าน Chrome                  ถ้วย