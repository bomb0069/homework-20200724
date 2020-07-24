*** Settings ***
Resource    keywords.robot
Test Setup    เปิดเว็บขึ้นมา
Test Template    Generate QR code
Test Teardown    ปิด Browser

*** Variables ***
${URL}    https://qifi.org/


*** Test Cases ***               SSID_TEXT     KEY_TEXT
Generate anchisa QR wifi ผ่านเว็บ    anchisa      tea
Generate fah QR wifi ผ่านเว็บ        fah          teaaa
    
    # ใส่ SSID
    # ใส่ Key
    # กด Generate
    # เช็ค QR code
    # ปิด browser