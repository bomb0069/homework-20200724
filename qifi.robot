*** Settings ***
Resource    keywords.robot
Library    SeleniumLibrary
Test Setup    เปิดโครมขึ้นมา-qifi
Test Template    สร้างqrcode
Test Teardown    ปิดบราวเซอร์

*** Test Cases ***
สร้าง qrcode ผ่าน chrome    yupp    yup1234