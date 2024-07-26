*** Settings ***
Documentation   To jest test, w którym testujemy przeglądarki internetowe
Library         SeleniumLibrary
*** Keywords ***
*** Variables ***
${url}  https://dobrekursy.it/tester-automatyzujacy/
${browser1}     chrome
${browser2}     edge

*** Test Cases ***
Browser Testing
    Open Browser    ${url}  ${browser1}     alias=ChromeDobreKursy
    Maximize Browser Window
    Set Browser Implicit Wait    2

    Close Browser
    Open Browser    ${url}  ${browser1}     alias=ChromeDobreKursy
    Sleep    1s

    Open Browser    ${url}  ${browser1}     alias=EdgeDobreKursy
    Maximize Browser Window
    Sleep    2s

    &{alias}    Get Browser Aliases
    Log    ${alias}

    @{browserIds}   Get Browser Ids
    Log     ${browserIds}

    Switch Browser    ChromeDobreKursy
    Sleep    2s

    Close All Browsers