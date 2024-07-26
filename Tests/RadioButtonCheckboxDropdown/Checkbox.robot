*** Settings ***
Documentation   To jest test, w którym testujemy Checkbox
Library         SeleniumLibrary
*** Keywords ***

*** Variables ***

*** Test Cases ***
Radio Button Check
    [Tags]  checkbox chrome
    Open Browser    https://demoqa.com/automation-practice-form     chrome
    Maximize Browser Window
    Sleep   2s

    Page Should Contain Checkbox    id:hobbies-checkbox-1
    Sleep   1s

    Page Should Not Contain Checkbox   id:hobbies-checkbox-10
    Sleep   1s

    Click Element  //*[@id="hobbiesWrapper"]/div[2]/div[1]
    Sleep   2s

    Checkbox Should Be Selected    id:hobbies-checkbox-1
    Sleep   1s

    Click Element  //*[@id="hobbiesWrapper"]/div[2]/div[1]
    Sleep   2s

    Checkbox Should Not Be Selected    id:hobbies-checkbox-1
    Sleep   1s

    Close Browser