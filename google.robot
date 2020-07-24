*** Settings ***
Resource    resource_file.robot
Test Setup   เปิด   http://www.google.co.th    ${DEFAULT_BROWSER}
Test Template    Test Search
Test Teardown    ปิด Browser

*** Test Cases ***
T1
    [Template]    Test Search
    robotframework
