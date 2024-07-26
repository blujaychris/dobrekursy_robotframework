*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${url}  https://practicetestautomation.com/practice-test-login/
${browser}  chrome

*** Keywords ***
Open And Maximize Browser
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
Close Browser After Test
    Close Browser
