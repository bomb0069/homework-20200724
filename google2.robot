*** Settings ***
Resource    keywords.robot
Library    SeleniumLibrary
Test Setup    เปิดโครมขึ้นมา
Test Template    ค้นหา google ผ่าน chrome
Test Teardown    ปิดบราวเซอร์

*** Test Cases ***                    SEARCH_TEXT
ค้นหา iPhone google ผ่าน chrome         iPhone
ค้นหา apple watch google ผ่าน chrome    apple watch