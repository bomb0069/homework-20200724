*** Settings ***
Resource    keywords.robot
Test Setup    เปิดกูเกิลโครมขึ้นมา เข้า URL google.co.th
Test Template    ค้นหาบน Google ผ่าน Chrome
Test Teardown    ปิด

*** Test Cases ***                          SEARCH_TEXT
ค้นหา joker movie ใน Google ผ่าน Chrome       joker movie
ค้นหารังนกใน Google ผ่าน Chrome                รังนก