*** Variables ***
${URL}    http://qifi.org
*** Settings ***
Resource    keywords.robot
Library    SeleniumLibrary
Test Setup    เปิด Browser
Test Template    สร้าง QR-code ผ่าน qifi
Test Teardown    ปิดหน้าต่าง

*** Test Cases ***         SSID       KEY 
สร้าง QR-code ผ่าน qifi    brightbite    123