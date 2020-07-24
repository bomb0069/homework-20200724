*** Settings ***
Resource    resource_file.robot
Test Setup   เปิด   https://qifi.org
Test Teardown    ปิด Browser

*** Test Cases ***
T2
    Test QR Code