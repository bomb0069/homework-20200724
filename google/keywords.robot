*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://www.google.com

*** Keywords ***
ค้นหาบน google ผ่าน Google Chrome
    [Arguments]     ${SEARCH_TEXT}
    Searching       ${SEARCH_TEXT}
    Press enter button
    Click the 1st link

Open Google in Google Chrome
    Open Browser    ${URL}    chrome
Searching  
    [Arguments]    ${SEARCH_TEXT}
    Input Text    q    ${SEARCH_TEXT}   #Input Text    <locator>    <value>
Press enter button
    Press Keys    q    RETURN   
Click the 1st link
    Click Link    //div[@class="r"]//a
    #Click Element    class:g
    #Click Link    //*[@id="rso"]/div[1]/div/div[1]/a
    #Click Link    //*[@id="rso"]/div[1]/div/div[1]/a
Close Google Chrome
    Close Browser