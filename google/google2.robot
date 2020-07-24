*** Settings ***
Resource    keywords.robot
Library    SeleniumLibrary
Test Setup    เปิด google.co.th ใน Chrome ขึ้นมา
Test Template    ค้นหาบน google ผ่าน chrome
Test Teardown   ปิด Browser

*** Variable ***
${URL}    http://www.google.co.th

*** Test Case ***                             SEARCH_TEXT
ค้นหาก๋วยเตี๋ยวเส้นเล็กน้ำใสบน google ผ่าน chrome    ก๋วยเตี๋ยวเส้นเล็กน้ำใส
ค้นหาก๋วยเตี๋ยวน้ำตกบน google ผ่าน chrome          ก๋วยเตี๋ยวน้ำตก


