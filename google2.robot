*** Settings ***
Resource   keywords.robot
Test Setup      เปิด Chrome เข้า google.com
Test Template   ค้นหาบน Google ผ่าน Chrome
Test Teardown   ปิด Chrome


*** Test Cases ***                      SEARCH
ค้นหา dog ใน Google ผ่าน Chrome           dog
ค้นหา cat ใน Google ผ่าน Chrome           cat
