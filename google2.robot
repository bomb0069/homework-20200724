*** Settings ***
Resource    keyword.robot
Library    SeleniumLibrary
Test Setup    Go to google
Test Teardown    Close
Test Template    ค้นหา by chorme


*** Test Cases ***    SEARCH_TEXT   
ค้นหา by chrome1    รังนก
ค้นหา by chrome2    ก๋วยเตี๋ยวเส้นเล็กน้ำใส
   
  
