*** Settings ***
Resource    google2Resource.robot
Test Template    ค้นหาบน Google Chrome
Test Setup    เปิด Browser แล้วไปที่ https://google.com
Test Teardown    Close Browser


*** Variables ***
${URL}    https://google.com
${seachKeyWord}    Life was like a box of chocolates. You never know what you're gonna get
${seachKeyWord2}    Forrest Gump Pantip

*** Test Cases ***                                                                                    SEARCH_WORD

ค้นหาคำว่า Life was like a box of chocolates. You never know what you're gonna get ผ่าน Google Chrome    ${seachKeyWord}
ค้นหาคำว่า Google Chrome Forrest Gump ผ่าน Google chrome                                                 ${seachKeyWord2}
    
            

    
