
*** Variables ***
${URL}    http://www.google.co.th 


  
*** Keywords ***

ค้นหา by chorme
    Go to google
    [Arguments]    ${SEARCH_TEXT}
    ค้นหา    ${SEARCH_TEXT}
    enter or click search
    click the first link on top of the page

Go to google
    Open Browser    ${URL}    Chrome

ค้นหา
    [Arguments]    ${SEARCH_TEXT}
    Input Text    q    ${SEARCH_TEXT}


enter or click search
    press keys    q    ENTER

wait for changing the page
    Wait Until Page Contains    ก๋วยเตี๋ยวเส้นเล็กน้ำใส

click the first link on top of the page
    Click Link    //div[@class="r"]//a
    
Close
    CLose Browser





