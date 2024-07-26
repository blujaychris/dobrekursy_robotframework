*** Settings ***
Documentation   To jest test, w którym testujemy dane bez pliku excel
Library         SeleniumLibrary
*** Keywords ***
*** Variables ***

*** Test Cases ***
ProperLogin
    Open Browser    https://practicetestautomation.com/practice-test-login/     chrome
    Input Text    //*[@id="username"]    student
    Input Text    //*[@id="password"]    Password123
    Click Element    //*[@id="submit"]
    Page Should Contain     Logged In Successfully
    Sleep   2s
    Close Browser

WrongLogin
    Open Browser    https://practicetestautomation.com/practice-test-login/     chrome
    Input Text    //*[@id="username"]    studentka
    Input Text    //*[@id="password"]    Password123
    Click Element    //*[@id="submit"]
    Page Should Contain     Your username is invalid!
    Sleep   2s
    Close Browser

WrongPassword
    Open Browser    https://practicetestautomation.com/practice-test-login/     chrome
    Input Text    //*[@id="username"]    student
    Input Text    //*[@id="password"]    Password
    Click Element    //*[@id="submit"]
    Page Should Contain     Your password is invalid!
    Sleep   2s
    Close Browser
