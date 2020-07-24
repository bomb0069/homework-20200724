*** Settings ***
Resource    keywords.robot
Library    SeleniumLibrary
Test Setup    เปิด google.co.th ใน chrome
Test Template    ค้นหาผ่าน chrome
Test Teardown    ปิด Browser

*** Test Cases ***         SEARCH_TEXT 
Search ก๋วยเตี๋ยวเส้นเล็กน้ำใส    ก๋วยเตี๋ยวเส้นเล็กน้ำใส
Search ก๋วยเตี๋ยวน้ำตก         ก๋วยเตี๋ยวน้ำตก

