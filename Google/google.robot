*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Search
    เปิด google.co.th ใน chrome 
    ค้นหาคำว่า ก๋วยเตี๋ยวเส้นเล็กน้ำใส
    กดปุ่มค้นหา ต้องพบคำว่า ก๋วยเตี๋ยวเส้นเล็กน้ำใส ใน ผลลัพธ์
    รอจนเปลี่ยนผลการค้นหา
    

*** Keywords ***
เปิด google.co.th ใน chrome
    Open Browser    http://www.google.co.th    Chrome

ค้นหาคำว่า ก๋วยเตี๋ยวเส้นเล็กน้ำใส
    Input Text     q    ก๋วยเตี๋ยวเส้นเล็กน้ำใส

กดปุ่มค้นหา ต้องพบคำว่า ก๋วยเตี๋ยวเส้นเล็กน้ำใส ใน ผลลัพธ์
    Submit Form

รอจนเปลี่ยนผลการค้นหา
    Wait Until Page Contains    ก๋วยเตี๋ยวเส้นเล็กน้ำใส
    Page Should Contain    ก๋วยเตี๋ยวเส้นเล็กน้ำใส


    
