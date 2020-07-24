*** Settings ***
Resource    keyword.robot
Library    SeleniumLibrary
Test Setup     เปิดโครมขึ้นมา
Test Template    ค้นหาบน google ผ่าน Chrome
Test Teardown    เสร็จสิ้น


*** Test Cases ***            SEARCH_TEXT
ค้นหาบน google ผ่าน Chrome      ขนม
ค้นหาบน google ผ่าน Chrome      นม
    
    

