*** Settings ***
Resource         keyword-qifi.robot
Test Setup       เปิด chrome browser ขึ้นมา เข้า qifi.org
Test Template    Generate qrcode ใน Google ผ่าน chrome
Test Teardown    ปิดหน้าเว็บ 

*** Test Cases ***                                  SSID         KEY         
Generate qrcode bugbigz ใน Google ผ่าน chrome        bugbigz      43211234
Generate qrcode bangabang ใน Google ผ่าน chrome      bangabang    12345678

