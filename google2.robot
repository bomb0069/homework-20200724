*** Settings **
Resource    keywords.robot
Test Setup    เปิด Browser
Test Template    ค้นหา ใน Google ผ่าน Chrome
Test Teardown    ปิด Chrome


*** Test Cases ***                            SEARCH_TEXT
ค้นหา robot framework ใน Google ผ่าน Chrome     robot framework
ค้นหา ก๋วยเตี๋ยวเส้นเล็กน้ำใส ใน Google ผ่าน Chrome    ก๋วยเตี๋ยวเส้นเล็กน้ำใส
    
    
   
