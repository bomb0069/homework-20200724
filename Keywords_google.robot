*** Settings ***
Library         SeleniumLibrary

*** Keywords ***
ค้นหาบน Google ผ่าน Chrome
    # Test Setup
    [Arguments]          ${text}  
    กรอกสิ่งที่ต้องการค้นหา   ${text} 
    กด ENTER เพื่อค้นหา       
    เข้าไปลิงค์ที่ต้องการ
    # Test Teardown
    
เปิดบราวเซอร์  
    Open Browser         ${url}                                     chrome
กรอกสิ่งที่ต้องการค้นหา  
    [Arguments]          ${text}    
    Input Text           q                                          ${text} 
กด ENTER เพื่อค้นหา         
    Press Keys           q                                          ENTER
รอมันทำการโหลดจนเสร็จ      
    Page Should Contain  ผลการค้นหาประมาณ                                           
เข้าไปลิงค์ที่ต้องการ          
    Click Element        //*[@id="rso"]/div[4]/div/div[1]/a                     
ปิดบราวเซอร์               
    Close Browser