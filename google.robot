*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ค้นหา
    Go to google
    Input keyword
    enter or click search
    wait for changing the page
    click the first link on top of the page

 
   

*** Keywords ***
Go to google
    Open Browser    http://www.google.co.th    Chrome

Input keyword
    Input Text    q    ก๋วยเตี๋ยวเส้นเล็กน้ำใส

enter or click search
    press keys    q    ENTER

wait for changing the page
    Wait Until Page Contains    ก๋วยเตี๋ยวเส้นเล็กน้ำใส

click the first link on top of the page
    Click Element      class:g





