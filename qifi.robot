*** Settings ***
Library           SeleniumLibrary
Test Template     Generate WiFi QR Code
Suite Setup       เปิดเบราว์เซอร์ และเข้า https://qifi.org/
Suite Teardown    Close All Browsers
Resource          resource.qifi.robot

***Test Cases***         SSID              PASSWORD
Generate WiFi QR Code    robotframework    1234

