** Settings ***
Resource    keywords.robot
Test Setup    ไปยังเว็บไซต์ qifi.org
Test Teardown    ปิด Google chrome

*** Test Cases ***
สร้าง QR Code
    กรอก SSID และ key    pamuta    keawjit
    กดปุ่ม Generate
    check Qr Code
