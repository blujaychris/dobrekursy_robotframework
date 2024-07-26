*** Settings ***
Documentation   To jest test, w którym testujemy Radio Button
Library         SeleniumLibrary
*** Keywords ***

*** Variables ***

*** Test Cases ***
Radio Button Check
    [Tags]  radio button chrome
    Open Browser    https://demoqa.com/automation-practice-form     chrome
    Maximize Browser Window
    Sleep   2s
    
    Page Should Contain Radio Button    //*[@id="gender-radio-1"]
    Sleep   2s

    Radio Button Should Not Be Selected    gender
    Sleep   2s

    Page Should Not Contain Radio Button    //*[@id="gender-radio-10"]
    Sleep   2s

    Click Element  //*[@id="genterWrapper"]/div[2]/div[1]
    Sleep   2s

    Radio Button Should Be Set To    gender    Male
    Sleep   3s

    Close Browser